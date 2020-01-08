package MainPackage.Servlet;

import MainPackage.DAO.PersistanceHandler;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/Clear")
public class ClearPersonsServlet extends javax.servlet.http.HttpServlet{
    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        PersistanceHandler.DeleteAll();
        response.sendRedirect("./index.jsp");
    }
}
