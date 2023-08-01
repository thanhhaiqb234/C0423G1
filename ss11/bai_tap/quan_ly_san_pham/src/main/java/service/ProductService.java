package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepositoey;

import java.util.List;

public class ProductService implements IProductService{
    private static IProductRepository productRepositoey = new ProductRepositoey();
    @Override
    public List<Product> getAll() {
        return productRepositoey.getAll() ;
    }

    @Override
    public void addProduct(Product product) {
        productRepositoey.addProduct(product);
    }

    @Override
    public void deteleProduct(int product) {
        productRepositoey.detele(product);
    }

    @Override
    public List<Product> search(String product) {
        return productRepositoey.search(product);
    }

}
