package MainPackage.Servlet;

import MainPackage.DAO.PersistanceHandler;
import MainPackage.Person;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/AddNew")
public class NewPersonServlet extends javax.servlet.http.HttpServlet{
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("name");
        String bdate = request.getParameter("bdate");
        String occupation = request.getParameter("occupation");
        Person P = new Person(name,bdate,occupation);
        PersistanceHandler.AddPerson(P);
        response.sendRedirect("./index.jsp");
    }
}
