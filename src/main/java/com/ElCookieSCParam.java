package com;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "ElCookieSCParam",urlPatterns = {"/ElCookieSCParam"})
public class ElCookieSCParam extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.addCookie(new Cookie("User.Cookie", "Tomcat User"));
        RequestDispatcher rd = getServletContext().getRequestDispatcher("elCookieSCParam.jsp");
        rd.forward(req, resp);
    }
}
