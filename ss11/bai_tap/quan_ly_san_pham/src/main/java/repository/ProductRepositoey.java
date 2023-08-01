package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoey implements IProductRepository{
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Hành Tây",10000,"Hàng mới về","31/07/2023"));
        productList.add(new Product(2,"Bắp Cải",15000,"Hàng mới về","31/07/2023"));
        productList.add(new Product(3,"Xà Lách",20000,"Hàng mới về","31/07/2023"));
        productList.add(new Product(4,"Ớt Chuông",25000,"Hàng mới về","31/07/2023"));
        productList.add(new Product(5,"Súp Lơ",30000,"Hàng mới về","31/07/2023"));
        productList.add(new Product(6,"Đậu Bắp",35000,"Hàng mới về","31/07/2023"));
    }
    @Override
    public List<Product> getAll() {
        return productList;
    }

    @Override
    public void addProduct(Product product) {
        productList.add(product);
    }

    @Override
    public void detele(int product) {
        for (int i=0; i < productList.size(); i++){
            if (productList.get(i).getId() == product){
                productList.remove(i);
                break;
            }
        }
    }

    @Override
    public List<Product> search(String product) {
        List<Product> productList1 = new ArrayList<>();
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getTenSanPham().equals(product)){
                productList1.add(productList.get(i));
            }
        }
        return productList1;
    }
}
