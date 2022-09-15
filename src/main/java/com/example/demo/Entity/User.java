package com.example.demo.Entity;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
    @Id
    private String email;
    private String firstName;
    private String lastName;
    private String middleName;
    private String country;
    private String gender;
    private Date dateOfBirth;
    private String Password;
    @Transient
    private String confirmPassword;
}
