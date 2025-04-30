package com.example.hospital_management_system_3;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;

@Controller
public class AnoController {
    @Autowired
    JdbcTemplate jdbc;
   

    @GetMapping("/index")
    public String index() {
        return "index";
    }
    @PostMapping("/login")
    public String login_chk(Model model, HttpSession session, @RequestParam("email") String email,
            @RequestParam("password") String password) {
        ArrayList<String> ali = new ArrayList<String>();
        String sql = "select * from user_master where email='" + email + "' and password='" + password + "'";
        jdbc.query(sql, new RowMapper<String>() {
            public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                ali.add(rs.getString(1));
                ali.add(rs.getString(2));
                ali.add(rs.getString(3));
                ali.add(rs.getString(4));
                ali.add(rs.getString(5));
                ali.add(rs.getString(6));
                return "";
            }
        });
        if (ali.isEmpty()) {
            model.addAttribute("sms", "Invalid Details");
            return "login";
        } else {
            if ((ali.get(5)).equalsIgnoreCase("1")) {
                session.setAttribute("name", ali.get(1));
                session.setAttribute("email", ali.get(2));
                session.setAttribute("sl_no", ali.get(0));
                if ((ali.get(4)).equalsIgnoreCase("admin")) {
                    return "redirect:/admin_dashboard";
                } else if ((ali.get(4)).equalsIgnoreCase("doctor")) {
                    return "redirect:/doctor_dashboard?sl_no="+ali.get(0);
                } else if ((ali.get(4)).equalsIgnoreCase("user")) {
                    return "redirect:/appointment";
                } else {
                    model.addAttribute("sms", "some error....");
                    return "login";
                }
            } else {
                model.addAttribute("sms", "plz contact to admin");
                return "login";
            }
        }
    }
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    @PostMapping("/sign_up")
    public String signup(Model m, @RequestParam("name") String name, @RequestParam("email") String email,
            @RequestParam("password") String password, @RequestParam("role") String role) {
        String sql = "insert into user_master(name,email,password,role) values(?,?,?,?)";
        jdbc.update(sql, name, email, password, role);
        return "login";
    }

    @PostMapping("/add_faq")
    public String add_faq(Model m, @RequestParam("questions") String questions, @RequestParam("answers") String answers) {
        String sql = "insert into faq(questions,answers) values(?,?)";
        jdbc.update(sql, questions, answers);
        m.addAttribute("sms", "Saved Success");
        return "add_faq";
    }
   @GetMapping("/add_faq")
   public String add_faq() {
        return "add_faq";
    }

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }
    @GetMapping("about")
    public String about() {
        return "about";
    }
    @GetMapping("/blog_details")
    public String blog_details() {
        return "blog_details";
    }
    @GetMapping("/blog")
    public String blog() {
        return "blog";
    }
    @GetMapping("/department")
    public String department() {
        return "department";
    }
    @GetMapping("/doctor")
    public String doctor() {
        return "doctor";
    }
   
    
    
    

    // @PostMapping("/faqs")
    // public String contact(Model m, @RequestParam("question") String que, @RequestParam("answer") String ans) {
    //     try {
    //         jdbc.execute("INSERT INTO faq(questions, answers) VALUES('" + que + "','" + ans + "')");
    //         m.addAttribute("sms", "Faq added successfully");
    //         return faqs(m);
    //     } catch (Exception e) {
    //         System.out.println(e.getMessage());
    //         // Handle any other exceptions that may occur during
    //         m.addAttribute("sms", "An error occurred. Please try again.");
    //         return "admin/afaq";

    //     }

    // }

    // @GetMapping("/faqs")
    // public String faqs(Model mf) {
    //     String sql = "select * from faq";
    //     List<Map<String, Object>> faq = jdbc.queryForList(sql);
    //     mf.addAttribute("faq", faq);

    //     return "faq";
    // }
} 
