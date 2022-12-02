package com.zxy.oe.test;

import com.zxy.oe.bean.Department;
import com.zxy.oe.mapper.DepartmentMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class DepartmentMapperTest {

    @Test
    public void testSelectDep(){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        DepartmentMapper mapper = sqlSession.getMapper(DepartmentMapper.class);
        List<Department> departments = mapper.selectDep();
        System.out.println(departments);
        sqlSession.close();
    }
}
