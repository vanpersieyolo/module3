package Controller;

import Model.ListProduct;
import Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createProduct(request,response);
                break;
            case "search":
                searchProduct(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
            default:
                showAll(request,response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreate(request,response);
                break;
            case "edit":
                showEdit(request,response);
                break;
            case "remove":
                remove(request,response);
                break;
            default:
                showAll(request,response);

        }
    }
    protected void createProduct(HttpServletRequest request, HttpServletResponse response){
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = new Product(name,id);
        ListProduct.products.add(product);
        RequestDispatcher rq = request.getRequestDispatcher("View/createProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void showCreate(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rq = request.getRequestDispatcher("View/createProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void showAll(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("products",ListProduct.products);
        Integer.parseInt(request.getParameter("id"));
        RequestDispatcher rq = request.getRequestDispatcher("/View/ViewListProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void searchProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getParameter("search").equals("")){
            response.sendRedirect("/product");
            return;
        }
        int id = Integer.parseInt(request.getParameter("search"));
        ArrayList<Product> listProduct = new ArrayList();
        listProduct.add(ListProduct.findByID(id));
        request.setAttribute("products", listProduct);
        RequestDispatcher rq = request.getRequestDispatcher("/View/ViewListProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void remove(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        ListProduct.remove(id);
        request.setAttribute("products",ListProduct.products);
        RequestDispatcher rq = request.getRequestDispatcher("/View/ViewListProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void edit(HttpServletRequest request, HttpServletResponse response){
        int idPr = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher rq = request.getRequestDispatcher("View/ViewListProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    protected void showEdit(HttpServletRequest request, HttpServletResponse response){
        RequestDispatcher rq = request.getRequestDispatcher("View/EditProduct.jsp");
        try {
            rq.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
