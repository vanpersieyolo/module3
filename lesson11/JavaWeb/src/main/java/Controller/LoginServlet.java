package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/index.jsp")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String checkAccount = request.getParameter("account");
        String checkpassword = request.getParameter("password");
        RequestDispatcher rd;
        if (checkLogin(checkAccount, checkpassword)) {
            rd = request.getRequestDispatcher("Product/view.jsp");
            rd.forward(request, response);
        }
    }

    protected boolean checkLogin(String id, String password) {
        if (id.equals("admin") && password.equals("admin")) {
            return true;
        }
        return false;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher res = request.getRequestDispatcher("login/viewlogin.jsp");
        res.forward(request, response);
    }
}
