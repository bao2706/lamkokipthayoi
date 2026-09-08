package Service;

import DAO.EmployeeDAO;
import Entity.Employee;

import java.util.List;

public class employeeService {
    EmployeeDAO employeeDAO = new EmployeeDAO();
    public List<Employee> getAllEmployee() {
        return employeeDAO.getAllEmployee();

    }
}
