package com.company.registration.controller;

import com.company.registration.dao.EmployeeDao;
import com.company.registration.model.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {

    private EmployeeDao employeeDao = new EmployeeDao();



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        System.out.println(firstName);
        String lastName = req.getParameter("lastName");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String address = req.getParameter("address");
        String contact = req.getParameter("contact");

        Employee employee = new Employee();
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setUsername(username);
        employee.setPassword(password);
        employee.setAddress(address);
        employee.setContact(contact);
//sjdsjdbasd
        try{
            employeeDao.registerEmployee(employee);
        }catch (Exception ex){
            ex.printStackTrace();
        }

        RequestDispatcher dispatcher=req.getRequestDispatcher("/views/employeedetails.jsp");
        dispatcher.forward(req,resp);

    }


}
