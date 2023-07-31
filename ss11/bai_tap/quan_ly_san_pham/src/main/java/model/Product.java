package model;

public class Product {
    private int id;
    private String tenSanPham;
    private double gia;
    private String moTaSanPham;
    private String nhaSanXuat;

    public Product() {
    }

    public Product(int id, String tenSanPham, double gia, String moTaSanPham, String nhaSanXuat) {
        this.id = id;
        this.tenSanPham = tenSanPham;
        this.gia = gia;
        this.moTaSanPham = moTaSanPham;
        this.nhaSanXuat = nhaSanXuat;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getMoTaSanPham() {
        return moTaSanPham;
    }

    public void setMoTaSanPham(String moTaSanPham) {
        this.moTaSanPham = moTaSanPham;
    }

    public String getNhaSanXuat() {
        return nhaSanXuat;
    }

    public void setNhaSanXuat(String nhaSanXuat) {
        this.nhaSanXuat = nhaSanXuat;
    }
}
