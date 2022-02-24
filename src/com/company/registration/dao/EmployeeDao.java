package com.company.registration.dao;

import com.company.registration.model.Employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class EmployeeDao {

    public boolean registerEmployee(Employee employee) throws Exception {

        Class.forName("com.mysql.jdbc.Driver");
        String userName = "root";
        String password = "12345";

        String url = "jdbc:mysql://localhost:3306/employees";

        try (Connection connection = DriverManager.getConnection(url, userName, password)) {
            String sql = "INSERT INTO employee (id, first_name, last_name, username, password, address,contact),contact" +
                    "VALUES (?,?,?,?,?,?,?);";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, 1);
            preparedStatement.setString(2, employee.getFirstName());
            preparedStatement.setString(3, employee.getLastName());
            preparedStatement.setString(4, employee.getUsername());
            preparedStatement.setString(5, employee.getPassword());
            preparedStatement.setString(6, employee.getAddress());
            preparedStatement.setString(7, employee.getContact());

            return preparedStatement.execute();
        }catch (Exception ex){
            ex.printStackTrace();
            return false;
        }


    }
}
