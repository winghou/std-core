package com.cdkj.core.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.cdkj.core.ao.IActivityAO;
import com.cdkj.core.api.AProcessor;
import com.cdkj.core.common.DateUtil;
import com.cdkj.core.common.JsonUtil;
import com.cdkj.core.domain.Activity;
import com.cdkj.core.dto.req.XN660012Req;
import com.cdkj.core.exception.BizException;
import com.cdkj.core.exception.ParaException;
import com.cdkj.core.spring.SpringContextHolder;

/**
 * 查询活动
 * @author: asus 
 * @since: 2017年7月17日 上午11:02:59 
 * @history:
 */
public class XN660012 extends AProcessor {
    private IActivityAO activityAO = SpringContextHolder
        .getBean(IActivityAO.class);

    private XN660012Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Activity condition = new Activity();
        condition.setLocation(req.getLocation());
        condition.setHoldPlace(req.getHoldPlace());
        condition.setStartDatetime(DateUtil.strToDate(req.getStartDatetime(),
            DateUtil.DATA_TIME_PATTERN_2));
        condition.setEndDatetime(DateUtil.strToDate(req.getEndDatetime(),
            DateUtil.DATA_TIME_PATTERN_2));
        condition.setStatus(req.getStatus());
        condition.setUpdater(req.getUpdater());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IActivityAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        return activityAO.queryActivityList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN660012Req.class);
    }

}
