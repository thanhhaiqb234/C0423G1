package com.example.hien_thi_danh_sach_khach_hang;

public class ClientModel {
   private String name;
   private String data;
   private String address;
   private String image;

    public ClientModel() {
    }

    public ClientModel(String name, String data, String address, String image) {
        this.name = name;
        this.data = data;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "client{" +
                "name='" + name + '\'' +
                ", data='" + data + '\'' +
                ", address='" + address + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
