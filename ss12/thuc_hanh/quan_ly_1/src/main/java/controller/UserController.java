package controller;

import com.example.quan_ly_1.model.User;
import com.example.quan_ly_1.service.IUserService;
import com.example.quan_ly_1.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserController", value = "/users")
public class UserController extends HttpServlet {
    private static IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/create.jsp").forward(request, response);
                break;
            case "edit":
                int idUser = Integer.parseInt(request.getParameter("code"));
                userService.edit(idUser);
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
            case "search":
                request.getRequestDispatcher("list.jsp").forward(request,response);
                break;
            default:
                List<User> userList = userService.getAll();
                if (userList.size() == 0){
                    request.setAttribute("users",null);
                }else {
                    request.setAttribute("users", userList);
                }
                request.getRequestDispatcher("list.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String country = request.getParameter("country");
                User user = new User(name,email,country);
                userService.addUser(user);
                response.sendRedirect("/users");
                break;
            case "delete":
                int id = Integer.parseInt(request.getParameter("code"));
                userService.delete(id);
                response.sendRedirect("/users");
                break;
            case "edit":
                int idUser = Integer.parseInt(request.getParameter("code"));
                request.setAttribute("user",userService.edit(idUser));
                request.getRequestDispatcher("/edit.jsp").forward(request,response);
                break;
            case "search":
                String namee = request.getParameter("name");
                request.setAttribute("users", userService.search(namee));
                request.getRequestDispatcher("list.jsp").forward(request,response);
                break;
        }
    }
}