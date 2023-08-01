package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();
    void addProduct(Product product);
    void deteleProduct(int product);
    List<Product> search(String product);
}
