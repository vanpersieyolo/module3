import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float result = 0;
        String ngaongo = "";
        float stNumber = Float.parseFloat(request.getParameter("stNumber"));
        float ndNumber = Float.parseFloat(request.getParameter("ndNumber"));
        String req = request.getParameter("calculate");
        if (req.equals("+")){
            result = stNumber + ndNumber;
        }else if (req.equals("-")){
            result = stNumber - ndNumber;
        }else if (req.equals("*")){
            result = stNumber * ndNumber;
        }else{
            result = stNumber / ndNumber;
            if (ndNumber == 0) ngaongo="Ngáo à";
        }
        if (ngaongo.equals("")) ngaongo = result+"";
        request.setAttribute("ngaongo",ngaongo);
        RequestDispatcher res = request.getRequestDispatcher("index.jsp");
        res.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
