package com.example.hospital_management_system_3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
    @Autowired
    JdbcTemplate jdbc;
    
    @PostMapping("/contactus")
    public String createproducts(Model m,@RequestParam("msg") String msg,@RequestParam("name") String name,@RequestParam("email")String email,@RequestParam("subject") String subject)  {
        String sql="insert into contact(msg,name,email,subject) values(?,?,?,?)";
        jdbc.update(sql,msg,name,email,subject);
        m.addAttribute("sms","Your Message is sent");
        return "redirect:/contact";
    }
    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }
}
