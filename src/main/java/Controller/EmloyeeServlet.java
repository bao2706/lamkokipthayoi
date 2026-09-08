package Controller;

import DAO.EmployeeDAO;
import Entity.Employee;
import Entity.Product;
import Service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/emloyee")
public class EmloyeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmployeeDAO employeeDAO = new EmployeeDAO();
        List<Employee> listEmployee = employeeDAO.getAllEmployee();
        //set data to jsp
        request.setAttribute("listEmployee", listEmployee);
        request.getRequestDispatcher("/Views/Employee/employee.jsp").forward(request, response);
    }
}
