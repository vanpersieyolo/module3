import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/cus")
public class ListCustomersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected ArrayList<Customers> getAll(){
        ArrayList<Customers> list = new ArrayList<>();
        list.add(new Customers("Đoàn Hùng Dũng","1996","hanoi"));
        list.add(new Customers("Đặng Anh Văn","1996","hanoi"));
        list.add(new Customers("Mai Công Sơn","1996","hanoi"));
        list.add(new Customers("van","1996","hanoi"));
        return list;
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("text/html;charset=UTF-8");
        ArrayList<Customers> list ;
        list = getAll();
        request.setAttribute("list",list);
        RequestDispatcher res = request.getRequestDispatcher("index.jsp");
        res.forward(request, response);
    }
}
