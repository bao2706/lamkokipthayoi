package Controller;

import Entity.Product;
import Service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/home", ""})
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductService productService = new ProductService();
        List<Product> listProduct = productService.getListProduct();
        //set data to jsp
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

}
