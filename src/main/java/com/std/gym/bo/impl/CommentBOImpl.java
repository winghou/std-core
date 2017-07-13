package com.std.gym.bo.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.gym.bo.ICommentBO;
import com.std.gym.bo.base.PaginableBOImpl;
import com.std.gym.core.OrderNoGenerater;
import com.std.gym.dao.ICommentDAO;
import com.std.gym.domain.Comment;
import com.std.gym.enums.EPrefixCode;
import com.std.gym.exception.BizException;

@Component
public class CommentBOImpl extends PaginableBOImpl<Comment> implements
        ICommentBO {

    @Autowired
    private ICommentDAO commentDAO;

    @Override
    public boolean isCommentExist(String code) {
        Comment condition = new Comment();
        condition.setCode(code);
        if (commentDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveComment(Comment data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EPrefixCode.COMMENT.getCode());
            data.setCode(code);
            commentDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeComment(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Comment data = new Comment();
            data.setCode(code);
            count = commentDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshComment(Comment data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            count = commentDAO.update(data);
        }
        return count;
    }

    @Override
    public List<Comment> queryCommentList(Comment condition) {
        return commentDAO.selectList(condition);
    }

    @Override
    public Comment getComment(String code) {
        Comment data = null;
        if (StringUtils.isNotBlank(code)) {
            Comment condition = new Comment();
            condition.setCode(code);
            data = commentDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "编号不存在");
            }
        }
        return data;
    }
}
