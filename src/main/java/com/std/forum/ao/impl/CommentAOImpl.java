package com.std.forum.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.std.forum.ao.ICommentAO;
import com.std.forum.bo.IAccountBO;
import com.std.forum.bo.ICommentBO;
import com.std.forum.bo.IKeywordBO;
import com.std.forum.bo.ILevelRuleBO;
import com.std.forum.bo.IPostBO;
import com.std.forum.bo.IRuleBO;
import com.std.forum.bo.IUserBO;
import com.std.forum.bo.base.Page;
import com.std.forum.bo.base.Paginable;
import com.std.forum.core.StringValidater;
import com.std.forum.domain.Comment;
import com.std.forum.domain.LevelRule;
import com.std.forum.domain.Post;
import com.std.forum.domain.Rule;
import com.std.forum.domain.User;
import com.std.forum.enums.EBizType;
import com.std.forum.enums.EBoolean;
import com.std.forum.enums.EChannelType;
import com.std.forum.enums.EPostStatus;
import com.std.forum.enums.EPrefixCode;
import com.std.forum.enums.EReaction;
import com.std.forum.enums.ERuleKind;
import com.std.forum.enums.ERuleType;
import com.std.forum.exception.BizException;

@Service
public class CommentAOImpl implements ICommentAO {

    @Autowired
    private ICommentBO commentBO;

    @Autowired
    private IPostBO postBO;

    @Autowired
    private IKeywordBO keywordBO;

    @Autowired
    protected IRuleBO ruleBO;

    @Autowired
    protected ILevelRuleBO levelRuleBO;

    @Autowired
    protected IUserBO userBO;

    @Autowired
    protected IAccountBO accountBO;

    // 1.发布评论
    @Override
    @Transactional
    public String doComment(String content, String parentCode, String commer) {
        // 判断是否锁帖
        User user = userBO.getRemoteUser(commer);
        Rule rule = ruleBO.getRuleByCondition(ERuleKind.JF, ERuleType.FT,
            user.getLevel());
        Post post = getPostByParentCode(parentCode);
        if (EBoolean.YES.getCode().equals(post.getIsLock())) {
            throw new BizException("xn000000", "该帖已被锁定，无法评论");
        }
        // 判断非法词汇,无则正常发布
        String status = EPostStatus.PUBLISHED.getCode();
        EReaction result = keywordBO.checkContent(content);
        if (EReaction.REFUSE.getCode().equals(result.getCode())) {
            status = EPostStatus.FILTERED.getCode();
        }
        Post parentPost = getPostByParentCode(parentCode);
        String code = commentBO.saveComment(content, parentCode, status,
            commer, parentPost.getCode());
        // 增加一次评论数
        postBO.refreshPostSumComment(parentPost.getCode(),
            parentPost.getSumComment() + 1);
        // 评论送钱
        if (EPostStatus.PUBLISHED.getCode().equals(status)) {
            accountBO.doTransferAmountRemote("SYS_ACCOUNT", commer,
                EChannelType.JF, StringValidater.toLong(rule.getValue()),
                EBizType.AJ_SR, "发布评论，送积分", "发布评论，送积分");
            Long amount = accountBO.getAccountByUserId(commer, EChannelType.JF);
            LevelRule levelRule = levelRuleBO.getLevelRule(user.getLevel());
            if (amount > levelRule.getAmountMin()) {
                userBO.upgradeLevel(commer, Integer.toString(StringValidater
                    .toInteger(user.getLevel()) + 1));
            }
        } else {
            code = code + ";filter:true";
        }
        return code;
    }

    private Post getPostByParentCode(String code) {
        Post post = null;
        String parentCode = code;
        while (true) {
            if (EPrefixCode.POST.getCode().equals(parentCode.substring(0, 2))) {
                post = postBO.getPost(parentCode);
                break;
            } else {
                Comment comment = commentBO.getComment(parentCode);
                parentCode = comment.getParentCode();
            }
        }
        return post;
    }

    @Override
    public Comment getComment(String code) {
        Comment comment = commentBO.getComment(code);
        getParentComment(comment);
        this.fullUser(comment);
        return comment;
    }

    @Override
    public Comment getOSSComment(String code) {
        Comment comment = commentBO.getComment(code);
        this.fullUser(comment);
        return comment;
    }

    @Override
    public List<Comment> queryCommentList(Comment condition) {
        return commentBO.queryCommentList(condition);
    }

    @Override
    public Paginable<Comment> queryCommentPage(int start, int limit,
            Comment condition) {
        Paginable<Comment> page = commentBO.getPaginable(start, limit,
            condition);
        List<Comment> list = page.getList();
        for (Comment comment : list) {
            getParentComment(comment);
            this.fullUser(comment);
        }
        return page;
    }

    @Override
    public Paginable<Comment> queryMyCommentPage(int start, int limit,
            Comment condition) {
        Paginable<Comment> page = null;
        List<Comment> List = commentBO.selectMyList(condition);
        page = new Page<Comment>(start, limit, List.size());
        List<Comment> dataList = commentBO.queryMyCommentList(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        // Paginable<Comment> page = commentBO.getPaginable(start, limit,
        // condition);
        List<Comment> list = page.getList();
        for (Comment comment : list) {
            getParentComment(comment);
            this.fullUser(comment);
        }
        return page;
    }

    private void fullUser(Comment comment) {
        User user = userBO.getRemoteUser(comment.getCommer());
        comment.setNickname(user.getNickname());
        comment.setLoginName(user.getLoginName());
        comment.setPhoto(user.getPhoto());
    }

    private void getParentComment(Comment comment) {
        String parentCode = comment.getParentCode();
        if (EPrefixCode.POST.getCode().equals(parentCode.substring(0, 2))) {
            Post post = postBO.getPost(parentCode);
            comment.setPost(post);
        } else {
            Comment data = commentBO.getComment(parentCode);
            this.fullUser(data);
            comment.setParentComment(data);
        }
        if (null == comment.getPost()) {
            Post post = postBO.getPost(comment.getPostCode());
            comment.setPost(post);
        }
    }

    @Override
    public Paginable<Comment> queryCommentMyPage(int start, int limit,
            Comment condition) {
        Paginable<Comment> page = commentBO.getPaginable(start, limit,
            condition);
        List<Comment> list = page.getList();
        for (Comment comment : list) {
            // 获取帖子
            Post post = postBO.getPost(comment.getPostCode());
            comment.setPost(post);
            this.fullUser(comment);
            // 获取上级评论
            if (!comment.getParentCode().equals(comment.getPostCode())) {
                Comment parentComment = commentBO.getComment(comment
                    .getParentCode());
                comment.setParentComment(parentComment);
            }
        }
        return page;
    }

    @Override
    public Paginable<Comment> queryTDCommentPage(int start, int limit,
            Comment condition, String userId) {
        Paginable<Comment> page = null;
        User user = userBO.getRemoteUser(userId);
        condition.setContent("@" + user.getNickname());
        List<Comment> List = commentBO.selectTDList(condition);
        page = new Page<Comment>(start, limit, List.size());
        List<Comment> dataList = commentBO.queryTDCommentList(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        List<Comment> list = page.getList();
        for (Comment comment : list) {
            getParentComment(comment);
            this.fullUser(comment);
        }
        return page;
    }

    @Override
    public Paginable<Comment> queryOSSCommentPage(int start, int limit,
            Comment condition) {
        Paginable<Comment> page = commentBO.getPaginable(start, limit,
            condition);
        List<Comment> list = page.getList();
        for (Comment comment : list) {
            this.fullUser(comment);
        }
        return page;
    }
}
