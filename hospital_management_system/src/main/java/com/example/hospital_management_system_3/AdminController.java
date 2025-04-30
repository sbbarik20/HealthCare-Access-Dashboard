package com.example.hospital_management_system_3;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
    @Autowired
    JdbcTemplate jdbc;

    @PostMapping("/update_admin")
    public String update_admin(Model m, @RequestParam("sl_no") String sl_no,@RequestParam("name") String name,@RequestParam("email") String email) {
        String sql = "update user_master set name=?,email=? where sl_no = ? ";
        jdbc.update(sql,name,email,sl_no);
        return "redirect:/admin_profile";
    }


    @PostMapping("/update_faq")
    public String update_faq(Model m, @RequestParam("sl_no") String sl_no,@RequestParam("questions") String questions,@RequestParam("answers") String answers) {
        String sql = "update user_master set questions=?,answers=? where sl_no = ? ";
        jdbc.update(sql,questions,answers,sl_no);
        return "redirect:/faq_data";
    }

    @PostMapping("/delete_faq")
    public String delete_faq(Model m, @RequestParam("sl_no") String sl_no) {
        String sql = "delete from user_master where sl_no= "+sl_no;
        jdbc.update(sql);
        return "redirect:/faq_data";
    }
    @PostMapping("/update_user")
    public String update_user(Model m, @RequestParam("sl_no") String sl_no,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("status") String status ) {
        String sql = "update user_master set name=?,email=?,status=? where sl_no = ? ";
        jdbc.update(sql,name,email,status,sl_no);
        return "redirect:/user_data";
    }

    @PostMapping("/delete_user")
    public String delete_user(Model m, @RequestParam("sl_no") String sl_no) {
        String sql = "delete from user_master where sl_no= "+sl_no;
        jdbc.update(sql);
        return "redirect:/user_data";
    }


    @PostMapping("/update_doctor")
    public String update_doctor(Model m, @RequestParam("sl_no") String sl_no,@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("role") String role,@RequestParam("status") String status ) {
        String sql = "update user_master set name=?,email=?,role=?,status=? where sl_no = ? ";
        jdbc.update(sql,name,email,role,status,sl_no);
        return "redirect:/doctor_data";
    }

    @PostMapping("/delete_doctor")
    public String delete_doctor(Model m, @RequestParam("sl_no") String sl_no) {
        String sql = "delete from user_master where sl_no= "+sl_no;
        jdbc.update(sql);
        return "redirect:/doctor_data";
    }

    // get Admin data Start
    @GetMapping("/admin_data")
    public String admin_data(Model model) {
        String sql = "select * from user_master where role='admin'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("admind", li);
        return "admin_data";
    }
    // get Admin data end

    // get User data Start
    @GetMapping("/user_data")
    public String user_data(Model model) {
        String sql = "select * from user_master where role='user'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("userd", li);
        return "user_data";
    }
    // get user data end

    // get doctor data Start
    @GetMapping("/doctor_data")
    public String doctor_data(Model model) {

        String sql = "select * from user_master where role='doctor'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("doctord", li);
        return "doctor_data";
    }
    // get doctor data end

    // get Appointment data Start
    @GetMapping("/appointment_data")
    public String appointment_data(Model model) {
        String sql = "select * from appointment where status='1'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("appointmentd", li);
        return "appointment_data";
    }
    // get Appointment data end

    @GetMapping("/admin_home")
    public String admin_home() {
        return "admin_home";
    }

    @GetMapping("/admin_dashboard")
    String admin_dashboard(Model m) {
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
        return "admin_dashboard";
    }

    // get Contact data Start
    @GetMapping("/contact_data")
    public String contact_data(Model model) {
        String sql = "select * from contact";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("contactd", li);
        return "contact_data";
    }

    // get Contact data end

    // get pending apppointment data Start
    @GetMapping("/pending_appointment_data")
    public String pending_appointment_data(Model model) {
        String sql = "select * from appointment where status='0'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("pending_appointmentd", li);
        return "pending_appointment_data";
    }
    // get pending apppointment data end


    // Doctor SignUp Start
    @PostMapping("/add_doctor")
    public String add_doctor(Model m, @RequestParam("name") String name, @RequestParam("email") String email,
            @RequestParam("password") String password, @RequestParam("role") String role) {
        String sql = "insert into user_master(name,email,password,role) values(?,?,?,?)";
        jdbc.update(sql, name, email, password, role);
        return "login";
    }

    // Doctor SignUp End
    // Doctor singup getmapping Start
    @GetMapping("/add_doctor")
    public String add_doctor() {
        return "add_doctor";
    }
    // Doctor singup getmapping End

    @GetMapping("/faq_data")
    public String faq_data(Model model) {
        String sql = "select * from faq ";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("faqlist", li);
        return "faq_data";
    }
    @GetMapping("/faq")
    public String faq(Model model) {
        String sql = "select * from faq ";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("faqlist", li);
        return "faq";
    }
    

    @PostMapping("/approve_appointment")
    public String approve_appointment(@RequestParam("sl_no") String sl_no, Model model){
        String sql = "update appointment set status='1' where sl_no="+sl_no;
        jdbc.update(sql);
        return "redirect:/pending_appointment_data";
    }

    @PostMapping("/reject_appointment")
    public String reject_appointment(@RequestParam("sl_no") String sl_no, Model model){
        String sql = "update appointment set status='0' where sl_no="+sl_no;
        jdbc.update(sql);
        return "redirect:/appointment_data";
    }

    @GetMapping("/admin_profile")
    public String admin_profile(Model model) {
        String sql = "select * from user_master where role='admin'";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("admindata", li);
        return "admin_profile";
    }



    





    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // get pending apppointment data end

    // @GetMapping("/user")
    // public String user(Model model) {
    // System.out.println("User Page");
    // String sql = "select * from user_master where role='admin'";
    // List<Map<String, Object>> userdetails = jdbc.queryForList(sql);
    // model.addAttribute("userdetails", userdetails);
    // return "user";
    // }

    // @PostMapping("/manageuser")
    // public String manageuser(@RequestParam("email") String email,
    // @RequestParam("btn") String btn, Model model) {
    // if (btn.equalsIgnoreCase("Delete")) {
    // String sql = "delete from user_master where email=?";
    // jdbc.update(sql, email);
    // return user(model);
    // }
    // String sql = "select * from user_master where email='" + email + "'";
    // List<Map<String, Object>> userdetails = jdbc.queryForList(sql);
    // model.addAttribute("userdetails", userdetails);
    // return "edituser";
    // }

    // @PostMapping("/updateuser")
    // public String updateuser(@RequestParam("email") String email,
    // @RequestParam("name") String name,
    // @RequestParam("role") String role, @RequestParam("status") String status,
    // Model model) {
    // String sql = "update user_master set name=?, role=?, status=? where email=?";
    // jdbc.update(sql, name, role, status, email);
    // return user(model);
    // }
}
