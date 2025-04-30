package com.example.hospital_management_system_3;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    JdbcTemplate jdbc;

    // @PostMapping("userprofile")
    // public String user_profile(HttpSession session, Model model, @RequestParam("file") MultipartFile file,
    //         @RequestParam("age") String age) throws IOException {
    //     String email = (String) session.getAttribute("email");
    //     String sql = "INSERT INTO profile(email,photo,age) VALUES (?,?,?)";
    //     jdbc.update(sql, email, file.getBytes(), age);
    //     return "userprofile";
    // }

    // @GetMapping("userprofile")
    // public String userprofile(HttpSession session, Model model) {
    //     String email = (String) session.getAttribute("email");
    //     String sql = "SELECT user_master.name, profile.email FROM user_master JOIN profile ON user_master.email = profile.email WHERE user_master.email = ?";
    //     List<Map<String, Object>> userprofile = jdbc.queryForList(sql, email);
    //     model.addAttribute("userprofile", userprofile);
    //     model.addAttribute("imageData", userprofile.get(0).get("photo"));
    //     return "userprofile";
    // }
}
