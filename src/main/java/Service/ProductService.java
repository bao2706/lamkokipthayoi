package Service;

import DAO.ProductDAO;
import Entity.Product;
import Util.DBConnection;

import java.util.List;


public class ProductService {
    ProductDAO productDAO = new ProductDAO();
    public List<Product> getListProduct() {
        return productDAO.getAllProducts();
    }
    public void addProduct(String name, int price, String discount, int stock) {
        productDAO.addProduct(name, price, discount, stock);
    }
    public void deleteProduct(int id) {
        productDAO.deleteProduct(id);
    }

}
