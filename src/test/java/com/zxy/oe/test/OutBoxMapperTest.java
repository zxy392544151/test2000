package com.zxy.oe.test;

import com.zxy.oe.bean.Outbox;
import com.zxy.oe.mapper.OutBoxMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class OutBoxMapperTest {
    @Test
    public void testSelectLetterByAll(){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        List<Outbox> outboxes = mapper.selectLetterByEmpId("1");
        outboxes.forEach(outbox -> System.out.println(outbox));
        sqlSession.close();
    }
    @Test
    public void insertLetter(){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        int i = mapper.insertLetter("1234", "1234", "1,2,3", "2");
        System.out.println(i);
        sqlSession.commit();
        sqlSession.close();
    }

}
