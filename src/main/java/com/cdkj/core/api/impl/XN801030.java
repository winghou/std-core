package com.cdkj.core.api.impl;

import com.cdkj.core.ao.IInteractAO;
import com.cdkj.core.api.AProcessor;
import com.cdkj.core.common.JsonUtil;
import com.cdkj.core.core.StringValidater;
import com.cdkj.core.dto.req.XN801030Req;
import com.cdkj.core.dto.res.PKCodeRes;
import com.cdkj.core.exception.BizException;
import com.cdkj.core.exception.ParaException;
import com.cdkj.core.spring.SpringContextHolder;

/**
 * 收藏/点赞/浏览
 * @author: asus 
 * @since: 2017年9月1日 下午2:05:33 
 * @history:
 */
public class XN801030 extends AProcessor {
    private IInteractAO interactAO = SpringContextHolder
        .getBean(IInteractAO.class);

    private XN801030Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new PKCodeRes(interactAO.addInteract(req));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN801030Req.class);
        StringValidater.validateBlank(req.getType(), req.getEntityCode(),
            req.getInteracter(), req.getCompanyCode(), req.getSystemCode());
    }

}
