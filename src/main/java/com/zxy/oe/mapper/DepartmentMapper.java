package com.zxy.oe.mapper;

import com.zxy.oe.bean.Department;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DepartmentMapper {

    @Select("select * from department")
    List<Department> selectDep();
    @Select("select id from department where name = #{name}")
    Long selectDepByName(String name);
}
