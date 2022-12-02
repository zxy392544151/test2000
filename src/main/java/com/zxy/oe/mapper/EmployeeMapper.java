package com.zxy.oe.mapper;

import com.zxy.oe.bean.Employee;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EmployeeMapper {
    Employee selectByLogin(@Param(value = "loginName") String loginName,
                           @Param(value = "pwd") String pwd);

    Employee selectById(@Param(value = "id") long id);

    @Select("select * from employee where id = #{id}")
    List<Employee> selectByDepId(long id);
}
