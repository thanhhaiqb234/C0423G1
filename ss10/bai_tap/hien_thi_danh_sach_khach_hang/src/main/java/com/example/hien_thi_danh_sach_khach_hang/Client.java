package com.example.hien_thi_danh_sach_khach_hang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Client", value = "/Client")
public class Client extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ClientModel> clientModelList = new ArrayList<>();
        clientModelList.add(new ClientModel("Đinh Thanh Hải","20-09-1999","Quảng Bình","https://scontent.fdad1-3.fna.fbcdn.net/v/t1.6435-9/199375490_2898555023740040_837079688730335922_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_ohc=9jQB6XZYizoAX-_iY0I&_nc_ht=scontent.fdad1-3.fna&oh=00_AfCDLg109uYd6IbH_Ng0B8I7CkkiVuD-5TzkLbXQ6M7uhQ&oe=64EB0922"));
        clientModelList.add(new ClientModel("Đinh Thanh Hải","20-09-1999","Quảng Bình","https://scontent.fdad1-3.fna.fbcdn.net/v/t1.6435-9/199375490_2898555023740040_837079688730335922_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_ohc=9jQB6XZYizoAX-_iY0I&_nc_ht=scontent.fdad1-3.fna&oh=00_AfCDLg109uYd6IbH_Ng0B8I7CkkiVuD-5TzkLbXQ6M7uhQ&oe=64EB0922"));
        clientModelList.add(new ClientModel("Đinh Thanh Hải","20-09-1999","Quảng Bình","https://scontent.fdad1-3.fna.fbcdn.net/v/t1.6435-9/199375490_2898555023740040_837079688730335922_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_ohc=9jQB6XZYizoAX-_iY0I&_nc_ht=scontent.fdad1-3.fna&oh=00_AfCDLg109uYd6IbH_Ng0B8I7CkkiVuD-5TzkLbXQ6M7uhQ&oe=64EB0922"));
        clientModelList.add(new ClientModel("Đinh Thanh Hải","20-09-1999","Quảng Bình","https://scontent.fdad1-3.fna.fbcdn.net/v/t1.6435-9/199375490_2898555023740040_837079688730335922_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_ohc=9jQB6XZYizoAX-_iY0I&_nc_ht=scontent.fdad1-3.fna&oh=00_AfCDLg109uYd6IbH_Ng0B8I7CkkiVuD-5TzkLbXQ6M7uhQ&oe=64EB0922"));
        clientModelList.add(new ClientModel("Đinh Thanh Hải","20-09-1999","Quảng Bình","https://scontent.fdad1-3.fna.fbcdn.net/v/t1.6435-9/199375490_2898555023740040_837079688730335922_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=174925&_nc_ohc=9jQB6XZYizoAX-_iY0I&_nc_ht=scontent.fdad1-3.fna&oh=00_AfCDLg109uYd6IbH_Ng0B8I7CkkiVuD-5TzkLbXQ6M7uhQ&oe=64EB0922"));

        request.setAttribute("clientModelList",clientModelList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}