package com.example.quan_ly_1.service;

import com.example.quan_ly_1.model.User;
import com.example.quan_ly_1.repository.IUserRepository;
import com.example.quan_ly_1.repository.UserRepository;

import java.util.List;

public class UserService implements IUserService{
    private IUserRepository userRepository = new UserRepository();
    @Override
    public void addUser(User user) {
        userRepository.addUser(user);
    }

    @Override
    public List<User> getAll() {
        return userRepository.getAll();
    }

    @Override
    public void delete(int id) {
        userRepository.delete(id);
    }

    @Override
    public List<User> search(String namee) {
        return userRepository.search(namee);
    }

    @Override
    public Object edit(int idUser) {
        return userRepository.edit(idUser);
    }
}
