package com.example.hospital_management_system_3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppointmentController {

    @Autowired
    JdbcTemplate jdbc;

    @PostMapping("/makeAppointment")
    public String makeAppointment(Model m, @RequestParam("spl") String spl, @RequestParam("doctor") String dr_name,@RequestParam("name") String pt_name, @RequestParam("phone_no") String phone_no,@RequestParam("email") String email, @RequestParam("date") String date) {

        String checkEmailSql = "SELECT COUNT(*) FROM user_master WHERE email=?";
        int count = jdbc.queryForObject(checkEmailSql, Integer.class, email);

        if (count > 0) {
            String sql = "INSERT INTO Appointment(dr_name, specialist, pt_name, pt_phone, pt_email, apt_date) VALUES (?, ?, ?, ?, ?, ?)";
            jdbc.update(sql, dr_name, spl, pt_name, phone_no, email, date);
            m.addAttribute("sms", "Appointment made successfully");
        } else {
            m.addAttribute("sms", "Email does not exist Please Register");
        }
        return "signup";
    }

    @GetMapping("/appointment")
    public String appointment() {
        return "appointment";
    }
}
