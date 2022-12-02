package com.zxy.oe.biz;

import com.zxy.oe.bean.Department;
import com.zxy.oe.mapper.DepartmentMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class DepartmentBiz {

    public List<Department> selectDep(){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        DepartmentMapper mapper = sqlSession.getMapper(DepartmentMapper.class);
        List<Department> departments = mapper.selectDep();
        sqlSession.close();
        return  departments;
    }
    public Long selectDepByName(String name){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        DepartmentMapper mapper = sqlSession.getMapper(DepartmentMapper.class);
        Long depId= mapper.selectDepByName(name);
        sqlSession.close();
        return depId;
    }
}
