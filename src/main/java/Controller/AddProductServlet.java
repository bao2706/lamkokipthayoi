package Controller;

import Service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = {"/addProduct"})
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String priceStr = request.getParameter("price");
        String discountStr = request.getParameter("discount");
        String stockStr = request.getParameter("stock");

        int price = 0;
        int discount = 0;
        int stock = 0;
        try {
            price = Integer.parseInt(priceStr);
        } catch (Exception ignored) {}
        try {
            discount = Integer.parseInt(discountStr);
        } catch (Exception ignored) {}
        try {
            stock = Integer.parseInt(stockStr);
        } catch (Exception ignored) {}

        ProductService productService = new ProductService();
        productService.addProduct(name, price, String.valueOf(discount), stock);

        response.sendRedirect(request.getContextPath() + "/home");
    }
}
