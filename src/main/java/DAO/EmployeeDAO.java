package DAO;

import Entity.Employee;
import Entity.Product;
import Util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Employee> getAllEmployee() {
        List<Employee> list = new ArrayList<>();
        String query = "select * from `employee`;";
        try {
            con = new DBConnection().getConnection();// DB connect
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("dob"),
                        rs.getString("address")));
            }
        } catch (Exception e) {
        }


        return list;
    }

    

    public static void main(String[] args) {
        EmployeeDAO dao = new EmployeeDAO();
        List<Employee> list = dao.getAllEmployee();
        if (list == null) {
            System.out.println("ko co sp");
        } else {
            System.out.println(list.toString() + "/n");
        }
        for (Employee o : list) {
            System.out.println(o);
        }
    }
}


