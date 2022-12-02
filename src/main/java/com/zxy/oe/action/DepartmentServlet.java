package com.zxy.oe.action;

import com.zxy.oe.bean.Department;
import com.zxy.oe.bean.Employee;
import com.zxy.oe.biz.DepartmentBiz;
import com.zxy.oe.biz.EmployeeBiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/dep")
public class DepartmentServlet extends HttpServlet {
    DepartmentBiz departmentBiz = new DepartmentBiz();
    EmployeeBiz employeeBiz = new EmployeeBiz();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();

        String type = req.getParameter("type");
        switch (type){
            case "select":
                String depSel = req.getParameter("depSel");
                List<Department> depList = departmentBiz.selectDep();
//                Long depId = departmentBiz.selectDepByName(depSel);
//                List<Employee> empList= employeeBiz.getEmpByDepId(depId);
                req.setAttribute("depList",depList);
//                req.setAttribute("empList",empList);
                req.getRequestDispatcher("writeMail.jsp").forward(req,resp);
                break;
        }

    }
}
