package com.std.gym.dto.req;

/**
 * 下架团课
 * @author: asus 
 * @since: 2017年7月17日 下午6:59:53 
 * @history:
 */
public class XN622054Req {
    // 编号
    private String code;

    // 更新人
    private String updater;

    // 备注
    private String remark;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
