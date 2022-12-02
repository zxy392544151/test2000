package com.zxy.oe.mapper;

import com.zxy.oe.bean.Outbox;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface OutBoxMapper {

    List<Outbox> selectLetterByEmpId(String id);

    int updateChecked(String Lid);

    int deleteLetter(String Lid);

    @Insert("insert into outbox (title,content,sendTime,senderId,receiveIdList) values(#{title},#{content},sysdate(),#{sendId},#{receiveId})")
    int insertLetter(@Param("title") String title,@Param("content") String content,@Param("receiveId") String receiveId,@Param("sendId") String sendId);
}
