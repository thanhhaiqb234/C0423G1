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
}
