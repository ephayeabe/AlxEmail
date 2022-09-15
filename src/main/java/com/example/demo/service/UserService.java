package com.example.demo.service;

import com.example.demo.Entity.Message;
import com.example.demo.Entity.User;
import com.example.demo.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public void registerUser(User user) {
        userRepository.save(user);
    }

    public User findUserByUserName(String email) {
        return userRepository.findByEmail(email);
    }

    public List<User> getAllUser() {
        return userRepository.findAll();
    }

}
