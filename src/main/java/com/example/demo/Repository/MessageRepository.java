package com.example.demo.Repository;

import com.example.demo.Entity.Message;
import com.example.demo.Entity.MessageStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface MessageRepository extends JpaRepository<Message, UUID> {
    @Query("SELECT m FROM Message m WHERE m.receiverEmail = ?1 and m.receiverStatus = ?2")
    List<Message> findMessageByReceiverEmailAndReceiverStatus(String receiverEmail, String ReceiverStatus);

    @Query("SELECT m FROM Message m WHERE m.senderEmail = ?1 and m.senderStatus = ?2")
    List<Message> findMessageBySenderEmailAndSenderStatus(String senderEmail, MessageStatus senderStatus);

}
