package controllers;

import dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ChildPageServlet", urlPatterns = "/child")
public class ChildPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("chores", DaoFactory.getChoresDao().all());
        request.getRequestDispatcher("/WEB-INF/ChildPage.jsp").forward(request, response);
    }
}
