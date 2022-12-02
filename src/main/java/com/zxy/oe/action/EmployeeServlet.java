package com.zxy.oe.action;


import com.zxy.oe.bean.Employee;
import com.zxy.oe.biz.EmployeeBiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/emp")
public class EmployeeServlet extends HttpServlet {
    EmployeeBiz employeeBiz = new EmployeeBiz();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();

        String type = req.getParameter("type");
        switch (type){
            case "login":
                String name = req.getParameter("name");
                String pwd = req.getParameter("pwd");
                Employee employee = employeeBiz.getEmployee(name, pwd);
                if(employee == null){
                    out.print("<script>alert('用户名或密码错误');location.href='login.html'</script>");
                }else {
                    session.setAttribute("employee",employee);
                    out.print("<script>alert('用户登录成功');location.href='main.jsp'</script>");
                }
                break;
            case "exit":
                session.invalidate();
                out.print("<script>parent.window.location.href='login.html'</script>");
                break;

        }
    }
}
