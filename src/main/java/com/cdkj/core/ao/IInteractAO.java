package com.cdkj.core.ao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.cdkj.core.bo.base.Paginable;
import com.cdkj.core.domain.Interact;
import com.cdkj.core.dto.req.XN801030Req;
import com.cdkj.core.dto.req.XN801031Req;

@Component
public interface IInteractAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addInteract(XN801030Req req);

    public void dropInteract(XN801031Req req);

    public void editInteract(Interact data);

    public Paginable<Interact> queryInteractPage(int start, int limit,
            Interact condition);

    public List<Interact> queryInteractList(Interact condition);

    public Interact getInteract(String code, String companyCode,
            String systemCode);

}