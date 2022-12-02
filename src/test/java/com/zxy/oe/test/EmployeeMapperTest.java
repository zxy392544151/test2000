package com.zxy.oe.test;

import com.zxy.oe.bean.Employee;
import com.zxy.oe.mapper.EmployeeMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class EmployeeMapperTest {
    @Test
    public void testSelectByLogin(){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
        Employee employee = mapper.selectById(1L);
        System.out.println(employee);
        sqlSession.close();
    }


}
