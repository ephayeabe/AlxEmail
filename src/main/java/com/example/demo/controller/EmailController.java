package com.example.demo.controller;

import com.example.demo.Entity.Message;
import com.example.demo.Entity.MessageStatus;
import com.example.demo.Entity.User;
import com.example.demo.service.MessageService;
import com.example.demo.service.UserService;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class EmailController {
    @Autowired
    MessageService messageService;
    @Autowired
    UserService userService;


    @PostMapping("/send")
    public String sendMessage(@RequestParam String message, @RequestParam String subject, @RequestParam String receiverEmail, HttpServletRequest req) throws IOException {

        HttpSession session = req.getSession();
//        message.setSenderEmail(send);
        String sender = (String) session.getAttribute("user");
        Message msg = new Message();
        msg.setSenderEmail(sender);
        msg.setReceiverEmail(receiverEmail);
        msg.setMessage(message);
        msg.setSubject(subject);
        msg.setSenderStatus(MessageStatus.SENT);
        msg.setReceiverStatus(MessageStatus.RECEIVED);
//        msg.setReceiverEmail();
        messageService.send(msg);
        return "compose";

    }

    @GetMapping("/send")
    public String getMessage() {
        return "compose";
    }

    @GetMapping("/login")
    public String getSend() {
        return "login";
    }

    @PostMapping("/login")
    public ModelAndView loginCheck(@RequestParam String email, @RequestParam String password, HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        User user = userService.findUserByUserName(email);
        if (user != null && user.getPassword().equals(password)) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("user", user.getEmail());
            model.setViewName("inbox");
//            return "index"
            return model;
        }
        model.addObject("error", "Incorrect Username or Password");
        model.setViewName("login");
//        return "login";
        return model;
    }


    @GetMapping("/register")
    public ModelAndView updateMessage() {
//        System.out.println();
        ModelAndView model = new ModelAndView();
        model.setViewName("CreateAccount");
        model.addObject("hello", "hello world");

        return model;
    }

    @PostMapping("/register")
    public String registerUser(User user) {
        String userName = user.getEmail();
        user.setEmail(userName + "@alx.com");
        userService.registerUser(user);
        return "login";
    }

    @GetMapping("/users")
    public @ResponseBody List<User> getAllUser() {
        return userService.getAllUser();
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/inbox")
    public String inbox() {
        return "inbox";
    }

    @GetMapping("/sent")
    public ModelAndView sent(HttpSession httpSession) {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("sent");
        String email= (String) httpSession.getAttribute("user");
        List<Message> messageBySenderEmailAndSenderStatus = messageService.findMessageBySenderEmailAndSenderStatus(email, MessageStatus.SENT);

        modelAndView.addObject("messageList",messageBySenderEmailAndSenderStatus);
//        System.out.println(messageBySenderEmailAndSenderStatus);
        return modelAndView;
    }

    @GetMapping("/trash")
    public String trash(HttpSession httpSession){
        String email= (String) httpSession.getAttribute("user");
        List<Message> messageBySenderEmailAndSenderStatus = messageService.findMessageBySenderEmailAndSenderStatus(email, MessageStatus.TRASH);
        System.out.println(messageBySenderEmailAndSenderStatus);
        return "trash";
    }




    @GetMapping("/compose")
    public String compose() {
        return "compose";
    }

//    @GetMapping("/draft")
//    public ModelAndView draft(HttpSession httpSession) {
//        String email = (String) httpSession.getAttribute("user");
//        List<Message> userDraft = userService.findAllDraft();
//        return null;
//    }

//    @DeleteMapping("/delete")
//    public void deleteMessage(UUID uuid){
//
//    }
//    @PutMapping("/delete/{uuid}")
//    public String deleteMessage(@PathVariable("uuid") UUID uuid){
//
//    }




}
