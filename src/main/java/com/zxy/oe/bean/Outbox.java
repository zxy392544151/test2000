package com.zxy.oe.bean;

import java.io.Serializable;
import java.sql.Date;

public class Outbox implements Serializable {
    private long id;
    private String title;
    private String content;
    private java.sql.Date sendTime;
    private long senderId;
    private String receiveIdList;
    private int deleted;
    private int reply;
    private int draft;
    private int attachment;

    private int checked;
    private Employee employee;

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    @Override
    public String toString() {
        return "Outbox{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", sendTime=" + sendTime +
                ", senderId=" + senderId +
                ", receiveIdList='" + receiveIdList + '\'' +
                ", deleted=" + deleted +
                ", reply=" + reply +
                ", draft=" + draft +
                ", attachment=" + attachment +
                ", checked=" + checked +
                '}';
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public long getSenderId() {
        return senderId;
    }

    public void setSenderId(long senderId) {
        this.senderId = senderId;
    }

    public String getReceiveIdList() {
        return receiveIdList;
    }

    public void setReceiveIdList(String receiveIdList) {
        this.receiveIdList = receiveIdList;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public int getReply() {
        return reply;
    }

    public void setReply(int reply) {
        this.reply = reply;
    }

    public int getDraft() {
        return draft;
    }

    public void setDraft(int draft) {
        this.draft = draft;
    }

    public int getAttachment() {
        return attachment;
    }

    public void setAttachment(int attachment) {
        this.attachment = attachment;
    }

}
