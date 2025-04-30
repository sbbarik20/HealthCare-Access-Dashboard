package com.example.hospital_management_system_3;
    
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DoctorController {
    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/doctor_home")
    public String doctor_home() {
        return "doctor_home";
    }

    @GetMapping("/doctor_user_data")
    public String doctor_user_data(Model model) {
        String sql = "select * from user_master where role='user'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("userd", li);
        return "doctor_user_data";
    }

    @GetMapping("/doctor_appointment_data")
    public String doctor_appointment_data(Model model) {
        String sql = "select * from appointment where status='1' ";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("appointmentd", li);
        return "doctor_appointment_data";
    }

    @GetMapping("/doctor_faq_data")
    public String doctor_faq_data(Model model) {
        String sql = "select * from faq ";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("faqlist", li);
        return "doctor_faq_data";
    }

    @GetMapping("/doctor_contact_data")
    public String doctor_contact_data(Model model) {
        String sql = "select * from contact";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("contactd", li);
        return "doctor_contact_data";
    }

    @GetMapping("/doctor_pending_appointment_data")
    public String doctor_pending_appointment_data(Model model) {
        String sql = "select * from appointment where status='0'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("pending_appointmentd", li);
        return "doctor_pending_appointment_data";
    }
   

    @GetMapping("/doctor_dashboard")
    String doctor_dashboard(Model m) {
        String sql = "SELECT COUNT(*) from user_master where role='user'";
        String sql1 = "SELECT COUNT(*) from user_master where role='admin'";
        String sql2 = "SELECT COUNT(*) from appointment";
        String sql3 = "SELECT COUNT(*) from user_master where role='doctor'";
        String sql4 = "SELECT COUNT(*) from appointment where status='0'";
        String sql5 = "SELECT COUNT(*) from contact ";
        int userCount = jdbc.queryForObject(sql, Integer.class);
        int adminCount = jdbc.queryForObject(sql1, Integer.class);
        int appointmentCount = jdbc.queryForObject(sql2, Integer.class);
        int doctorCount = jdbc.queryForObject(sql3, Integer.class);
        int appointmentCountp = jdbc.queryForObject(sql4, Integer.class);
        int msgCount = jdbc.queryForObject(sql5, Integer.class);
        m.addAttribute("userCount", userCount);
        m.addAttribute("adminCount", adminCount);
        m.addAttribute("appointmentCount", appointmentCount);
        m.addAttribute("doctorCount", doctorCount);
        m.addAttribute("appointmentCountp", appointmentCountp);
        m.addAttribute("msgCount", msgCount);
        return "doctor_dashboard";
    }
    @GetMapping("/doctor_profile")
    public String admin_profile(Model model) {
        String sql = "select * from user_master where sl_no='6'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("doctordata", li);
        return "doctor_profile";
    }
}
