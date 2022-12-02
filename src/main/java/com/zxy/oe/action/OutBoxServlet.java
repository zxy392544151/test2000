package com.zxy.oe.action;

import com.zxy.oe.bean.Employee;
import com.zxy.oe.bean.Outbox;
import com.zxy.oe.biz.OutBoxBiz;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/box")
public class OutBoxServlet extends HttpServlet {
    OutBoxBiz outBoxBiz = new OutBoxBiz();
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
        Employee emp = (Employee)session.getAttribute("employee");
        switch (type){
            case "query":
                List<Outbox> letterList = outBoxBiz.getLetterByEmpId(emp.getId());
                req.setAttribute("letterList",letterList);
                req.getRequestDispatcher("let_list.jsp").forward(req,resp);
                break;
            case "unread":
                Integer unReadCount = outBoxBiz.getLetterByEmpIdUnRead(emp.getId());
                req.setAttribute("unReadCount",unReadCount);
                req.getRequestDispatcher("unreadMail.jsp").forward(req,resp);
                break;
            case "read":
                Long id = Long.parseLong(req.getParameter("id"));
                Outbox letter = outBoxBiz.getLetterById(id,emp.getId());
                req.setAttribute("letter",letter);
                req.getRequestDispatcher("detailsMail.jsp").forward(req,resp);
                break;
            case "check":
                Long id1 = Long.parseLong(req.getParameter("id"));
                int count1= outBoxBiz.updateChecked(id1);
                if(count1 == 1){
                    out.println("<script>alert('设置已读成功');parent.window.location.href='./box?type=query';</script>");
                }else {
                    out.println("<script>alert('设置已读失败');parent.window.location.href='./box?type=query';</script>");
                }
                break;
            case "delete":
                Long id2 = Long.parseLong(req.getParameter("id"));
                int count2 = outBoxBiz.deleteLetter(id2);
                if ((count2 == 1)) {
                    out.println("<script>alert('删除成功');parent.window.location.href='./box?type=query';</script>");
                }else {
                    out.println("<script>alert('删除失败');parent.window.location.href='./box?type=query';</script>");
                }
                break;
            case "write":
                String title = req.getParameter("title").trim();
                String content = req.getParameter("content").trim();
                String receiveId = req.getParameter("receiveId");
                String sendId = String.valueOf(emp.getId());
                int count3 = outBoxBiz.addLetter(title, content, sendId, receiveId);
                if ((count3 == 1)) {
                    out.println("<script>alert('发送成功');parent.window.location.href='./box?type=query';</script>");
                }else {
                    out.println("<script>alert('发送失败');parent.window.location.href='./box?type=query';</script>");
                }
                break;
        }
    }
}
