package com.example.demo.Entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Message {
    @Id
    @GeneratedValue(generator = "UUID", strategy = GenerationType.AUTO)
    private UUID uuid;
    private String subject;
    private String message;
    @Enumerated(EnumType.STRING)
    private MessageStatus senderStatus;
    @Enumerated(EnumType.STRING)
    private MessageStatus receiverStatus;
    private String senderEmail;
    private String receiverEmail;
}
