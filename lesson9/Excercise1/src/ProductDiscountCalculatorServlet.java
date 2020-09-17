import java.io.IOException;
import java.io.PrintWriter;

@javax.servlet.annotation.WebServlet(name = "ProductDiscountCalculatorServlet",urlPatterns = "/run")
public class ProductDiscountCalculatorServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String ProductDescription = request.getParameter("ProductDescription");
        float ListPrice = Float.parseFloat(request.getParameter("ListPrice")) ;
        float DiscountPercent = Float.parseFloat(request.getParameter("DiscountPercent"));

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");

        response.setContentType("text/html;charset=UTF-8");
        printWriter.println("<html>");
        printWriter.println("Product Description " + ProductDescription);
        printWriter.println("<br>");
        printWriter.println("Discount Amout = " + ListPrice * DiscountPercent *0.01 );
        printWriter.println("</html>");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
