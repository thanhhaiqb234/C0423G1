package com.example.quan_ly_1.repository;

import com.example.quan_ly_1.model.User;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserRepository implements IUserRepository {
    @Override
    public void addUser(User user) {
        try {
            PreparedStatement statement = BaseRepository.getConnectionJavaToDB()
                    .prepareStatement("insert into demo(id,namee,email,country) values (?,?,?,?)");
            statement.setInt(1,user.getId());
            statement.setString(2,user.getName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getCountry());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
