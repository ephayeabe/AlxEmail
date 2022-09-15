package com.example.demo.service;

import com.example.demo.Entity.Message;
import com.example.demo.Entity.MessageStatus;
import com.example.demo.Repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageService {
    @Autowired
    MessageRepository messageRepository;

    public void send(Message message) {
        messageRepository.save(message);
    }

    public void sendEmail(Message message) {
        messageRepository.save(message);
    }

    public List<Message> findMessageByReceiverEmailAndReceiverStatus(String receiverEmail, String receiverStatus) {
        return messageRepository.findMessageByReceiverEmailAndReceiverStatus(receiverEmail, receiverStatus);
    }

    public List<Message> findMessageBySenderEmailAndSenderStatus(String senderEmail, MessageStatus senderStatus) {
        return messageRepository.findMessageBySenderEmailAndSenderStatus(senderEmail, senderStatus);
    }
}
