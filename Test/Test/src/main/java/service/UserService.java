package service;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private Connection getConnection(){
        String url = "jdbc:mysql://localhost:3306/testjdbc?useSSL=false";
        String name = "root";
        String password = "123456";
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, name, password);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<User> findAll(){
        Connection connection = null;
        String sql = "SELECT * FROM user";
        List<User> users = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()){
                User user = new User();
                user.setId(resultSet.getLong(1));
                user.setName(resultSet.getString(2));
                user.setNumberphone(resultSet.getString(3));
                users.add(user);
            }
            return users;
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try{
                if(connection != null){
                    connection.close();
                }
                if(statement != null){
                    connection.close();
                }
                if(resultSet != null){
                    connection.close();
                }
            }catch (SQLException e1){
                e1.printStackTrace();
            }
            return null;
        }
    }
}
