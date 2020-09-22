package controller;

import model.User;
import service.UserService;

import java.util.List;

public class main {
    public static void main(String[] args) {
        UserService userService = new UserService();
        List<User> users = userService.findAll();
        for(User user:users){
            System.out.println(user.getName());
        }
    }
}
