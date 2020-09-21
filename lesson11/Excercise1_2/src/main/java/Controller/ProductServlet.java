package Controller;

import Model.Product;
import Service.ProductService;
import jdk.nashorn.internal.ir.RuntimeNode;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.transaction.UserTransaction;
import java.io.IOException;
import java.util.ArrayList;

@javax.servlet.annotation.WebServlet("/product")
public class ProductServlet extends javax.servlet.http.HttpServlet {
    ProductService productService = new ProductService();

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "search":
                searchById(request,response);
                break;
            case "create":
                create(request,response);
                break;
            case "edit":
                edit(request,response);
                break;

        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showcreate(request,response);
                break;
            case "edit":
                showEdit(request,response);
                break;
            case "remove":
                remove(request,response);
                break;
            default:
                showAll(request,response);
                break;

        }

    }
    public static void showAll(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        request.setAttribute("product",ProductService.products);
        RequestDispatcher rq = request.getRequestDispatcher("/Views/ViewProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void searchById(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws IOException {
        ProductService ps = new ProductService();
        if  (request.getParameter("search").equals("")){
            response.sendRedirect("/product");
            return;
        }
        int idInput = Integer.parseInt(request.getParameter("search"));
        ArrayList<Product> arrayList = new ArrayList<>();
        arrayList.add(ps.findById(idInput));
        request.setAttribute("product",arrayList);
        RequestDispatcher rq = request.getRequestDispatcher("/Views/ViewProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void create(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        int idInput = Integer.parseInt(request.getParameter("id"));
        String nameInput = request.getParameter("name");
        String description = request.getParameter("description");
        Product product = new Product(idInput,nameInput,description);
        ProductService.products.add(product);
        request.setAttribute("product",ProductService.products);
        RequestDispatcher rq = request.getRequestDispatcher("/Views/CreateProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void  showcreate(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        RequestDispatcher rq = request.getRequestDispatcher("/Views/CreateProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void showEdit(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher rq = request.getRequestDispatcher("/Views/ViewEdit.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void edit(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        ProductService ps = new ProductService();
        int idInput = Integer.parseInt(request.getParameter("id"));
        String nameInput = request.getParameter("name");
        String description = request.getParameter("description");
        ps.edit(idInput,idInput,nameInput,description);
        request.setAttribute("product",ProductService.products);
        RequestDispatcher rq = request.getRequestDispatcher("/Views/ViewEdit.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void remove(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response){
        ProductService ps = new ProductService();
        int idInput = Integer.parseInt(request.getParameter("id"));
        ps.remove(idInput);
        request.setAttribute("product",ProductService.products);
        RequestDispatcher rq = request.getRequestDispatcher("/Views/ViewProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
