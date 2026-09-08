package DAO;

import Entity.Product;
import Util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.lang.String;

public class ProductDAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product;";
        try {
            con = new DBConnection().getConnection();// DB connect
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("price"),
                        rs.getInt("discount"),
                        rs.getInt("stock")
                ));
            }
        } catch (Exception e) {
        }


        return list;
    }
    public void  addProduct( String  name, int price, String discount, int stock) {
        String query = "INSERT INTO product (name, price, discount, stock) VALUES (?,?,?, ?,)";

        try {
            con = new DBConnection().getConnection();// DB connect
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, price);
            ps.setString(3, discount);
            ps.setInt(4, stock);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();

        }

    }
    public void  deleteProduct(int id) {
        String query = "DELETE FROM product\n" +
                "WHERE id = ?;";

        try {
            con = new DBConnection().getConnection();// DB connect
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
        public static void main (String[]args){
            ProductDAO dao = new ProductDAO();
            List<Product> list = dao.getAllProducts();
            if (list == null) {
                System.out.println("ko co sp");
            } else {
                System.out.println(list.toString() + "/n");
            }
            for (Product o : list) {
                System.out.println(o);
            }
        }
    }
