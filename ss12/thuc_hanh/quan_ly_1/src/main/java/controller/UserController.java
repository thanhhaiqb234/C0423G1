package controller;

import com.example.quan_ly_1.model.User;
import com.example.quan_ly_1.service.IUserService;
import com.example.quan_ly_1.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserController", value = "/users")
public class UserController extends HttpServlet {
    private static IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                request.getRequestDispatcher("/create.jsp").forward(request,response);
                break;
            case "edit":
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
            default:
                request.getRequestDispatcher("list.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}