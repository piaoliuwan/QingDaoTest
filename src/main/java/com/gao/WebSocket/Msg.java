package com.gao.WebSocket;

import java.util.Date;

public class Msg {
    private String fromUid;

    private String toUid;

    private String toOrgId;

    private String data;

    private Date createDate = new Date();

    public Msg(String fromUid, String toUid, String toOrgId, String data, Date createDate) {
        this.fromUid = fromUid;
        this.toUid = toUid;
        this.toOrgId = toOrgId;
        this.data = data;
        this.createDate = createDate;
    }

    public String getFromUid() {
        return fromUid;
    }

    public void setFromUid(String fromUid) {
        this.fromUid = fromUid;
    }

    public String getToUid() {
        return toUid;
    }

    public void setToUid(String toUid) {
        this.toUid = toUid;
    }

    public String getToOrgId() {
        return toOrgId;
    }

    public void setToOrgId(String toOrgId) {
        this.toOrgId = toOrgId;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
