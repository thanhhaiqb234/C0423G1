package com.example.quan_ly_1.repository;

import com.example.quan_ly_1.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public interface IUserRepository {

    void addUser(User user);

    List<User> getAll();

    void delete(int id);

    List<User> search(String name);

    Object edit(int idUser);
}
