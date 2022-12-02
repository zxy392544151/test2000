package com.zxy.oe.biz;

import com.zxy.oe.bean.Employee;
import com.zxy.oe.mapper.EmployeeMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class EmployeeBiz {

    public Employee getEmployee(String name,String pwd){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
        Employee employee = mapper.selectByLogin(name,pwd);
        sqlSession.close();
        return employee;
    }
    public List<Employee> getEmpByDepId(long id){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
        List<Employee> employees = mapper.selectByDepId(id);
        sqlSession.close();
        return employees;
    }
}
