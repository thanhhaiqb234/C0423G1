package controller;

import model.Product;
import repository.IProductRepository;
import service.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductController", value = "/products")
public class ProductController extends HttpServlet {
    private IProductService productService = new ProductService();
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
            case "detele":
                request.getRequestDispatcher("/detele.jsp").forward(request,response);
                break;
            case "search":
                request.getRequestDispatcher("/search.jsp").forward(request,response);
                break;
            default:
               List<Product> productList = productService.getAll();
               if (productList.size() == 0){
                   request.setAttribute("products",null);
               }else {
                   request.setAttribute("products",productList);
               }
               request.getRequestDispatcher("list.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                int id = Integer.parseInt(request.getParameter("id"));
                String tenSanPham = request.getParameter("tenSanPham");
                int gia = Integer.parseInt(request.getParameter("gia"));
                String moTaSanPham = request.getParameter("moTaSanPham");
                String nhaSanXuat = request.getParameter("nhaSanXuat");
                Product product = new Product(id,tenSanPham,gia,moTaSanPham,nhaSanXuat);
                productService.addProduct(product);
                response.sendRedirect("/products");
                break;
            case "detele":
                int productID = Integer.parseInt(request.getParameter("id"));
                productService.deteleProduct(productID);
                response.sendRedirect("/products");
            case "search":
                String nameProduct = request.getParameter("name");

                request.setAttribute("products", productService.search(nameProduct));
                request.getRequestDispatcher("list.jsp").forward(request,response);
        }
    }
}