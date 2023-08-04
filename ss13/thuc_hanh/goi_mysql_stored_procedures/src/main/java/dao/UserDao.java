package dao;

import model.User;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao implements IUserDao{
    @Override
    public User getUserById(int id) {
        Connection connection = BaseDao.getConnectionJavaToDB();
        User user = null;
        String query = "CALL get_user_by_id(?)";
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1,id);
            ResultSet resultSet = callableStatement.executeQuery(query);
            while (resultSet.next()){
                user = new User();
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setCountry(resultSet.getString("country"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user ;
    }

    @Override
    public void insertUserStore(User user) throws SQLException {

    }
}
