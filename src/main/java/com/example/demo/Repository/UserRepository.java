package com.example.demo.Repository;

import com.example.demo.Entity.Message;
import com.example.demo.Entity.User;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
     User findByEmail(String email);
//     findAllByDraft();

}
