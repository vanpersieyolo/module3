package dao;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
     void insertUser(User user) throws SQLException;

     User selectUser(int id);

     List<User> selectAllUsers();

     boolean deleteUser(int id) throws SQLException;

     boolean updateUser(User user) throws SQLException;

     User getUserById(int id);

     void insertUserStore (User user) throws SQLException;
     void addUserTransaction(User user, int[] permision);
     List<User> showAll ();
     boolean fixInfor(User user)throws SQLException;
     boolean removeUser(int id ) throws SQLException;
}
