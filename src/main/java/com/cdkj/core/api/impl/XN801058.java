package com.cdkj.core.api.impl;

import com.cdkj.core.ao.ITravelsAO;
import com.cdkj.core.api.AProcessor;
import com.cdkj.core.common.JsonUtil;
import com.cdkj.core.core.StringValidater;
import com.cdkj.core.domain.Travels;
import com.cdkj.core.dto.req.XN801058Req;
import com.cdkj.core.enums.ETravelsStatus;
import com.cdkj.core.exception.BizException;
import com.cdkj.core.exception.ParaException;
import com.cdkj.core.spring.SpringContextHolder;

/**
 * 我的游记查询
 * @author: xieyj 
 * @since: 2017年12月5日 下午4:02:47 
 * @history:
 */
public class XN801058 extends AProcessor {
    private ITravelsAO travelsAO = SpringContextHolder
        .getBean(ITravelsAO.class);

    private XN801058Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Travels condition = new Travels();
        condition.setPublisher(req.getUserId());
        condition.setStatus(ETravelsStatus.TO_PUBLISH.getCode());
        condition.setOrder("publish_datetime", "desc");
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return travelsAO.queryMyTravelsPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN801058Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());
        StringValidater.validateBlank(req.getUserId());
    }

}