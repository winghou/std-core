package com.std.forum.dto.req;

/** 
 * 站点列表查询
 * @author: xieyj 
 * @since: 2016年8月29日 下午2:38:43 
 * @history:
 */
public class XN710006Req {
    // 名称(选填)
    private String name;

    // 负责人(选填)
    private String leader;

    // 地区(选填)
    private String address;

    // 是否推荐(选填)
    private String isHot;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIsHot() {
        return isHot;
    }

    public void setIsHot(String isHot) {
        this.isHot = isHot;
    }
}
