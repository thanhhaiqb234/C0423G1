package dao;

import model.User;

import java.sql.SQLException;

public interface IUserDao {
    User getUserById(int id);
    void insertUserStore(User user) throws SQLException;
}
