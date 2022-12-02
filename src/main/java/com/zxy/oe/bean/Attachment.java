package com.zxy.oe.bean;

import java.io.Serializable;
import java.sql.Date;

public class Attachment implements Serializable {
    private long id;
    private String name;
    private String types;
    private long size;
    private String path;
    private long outBoxId;
    private String inBoxId;

    @Override
    public String toString() {
        return "attachment{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", types='" + types + '\'' +
                ", size=" + size +
                ", path='" + path + '\'' +
                ", outBoxId=" + outBoxId +
                ", inBoxId='" + inBoxId + '\'' +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public long getOutBoxId() {
        return outBoxId;
    }

    public void setOutBoxId(long outBoxId) {
        this.outBoxId = outBoxId;
    }

    public String getInBoxId() {
        return inBoxId;
    }

    public void setInBoxId(String inBoxId) {
        this.inBoxId = inBoxId;
    }
}
