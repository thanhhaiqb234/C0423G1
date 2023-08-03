package com.example.quan_ly_1.service;

import com.example.quan_ly_1.model.User;

import java.util.List;

public interface IUserService {
    void addUser(User user);

    List<User> getAll();

    void delete(int id);

    List<User> search(String name);

    Object edit(int idUser);
}
