package com.learning.springsecuritydbexample.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class SampleController {

    @GetMapping("/")
    public String getWelcomeMessage(){
        return "<h1>Welcome to spring security DB example</h1><br><br>" +
                "Navigate to public rest endpoint: <b>/rest/public</b> <br>" +
                "Navigate to admin rest endpoint with authentication and authorization: <b>/rest/secured/admin</b> <br>" +
                "Navigate to logged in user rest endpoint with authentication and authorization: <b>/rest/secured/loggedusers</b> <br>" +
                "In order to authenticate with other user, navigate to <b>localhost:8080/login</b>";
    }

    @GetMapping("/rest/public")
    public String getMessageForAllRequests(){
        return "Sending message for all requests!";
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @GetMapping("/rest/secured/admin")
    public String getMessageForAdminRequests(){
        return "Sending private message for admin requests!";
    }

    @PreAuthorize("hasAnyRole('USER')")
    @GetMapping("/rest/secured/loggedusers")
    public String getMessageForUserRequests(){
        return "Sending private message for all logged in user requests!";
    }
}
