package com.example.hospital_management_system_3;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.hospital_management_system_3.model.ExamData;
import jakarta.servlet.http.HttpSession;


@Controller
public class StudentController {

    @Autowired
    JdbcTemplate jdbc;
    @PostMapping ("/saveStudentAnswer")
    public String saveStudentAnswer(@ModelAttribute ExamData ed, HttpSession session, Model m){
        String email = "sneha@gmail.com";
        String json_txt = ed.toString();
        System.out.println(json_txt);
        return "result";
    }

    @GetMapping("/Addquestion")
    public String Addquestion(){
        return "Addquestion";
    }

    @PostMapping("/save_form")
    public String signup(Model m, @RequestParam("question") String question, @RequestParam("option1") String option1,
            @RequestParam("option2") String option2, @RequestParam("option3") String option3,  @RequestParam("option4") String option4,@RequestParam("answer") String answer) {
        String sql = "insert into questions(question,option1,option2,option3,option4,answer) values(?,?,?,?,?,?)";
        jdbc.update(sql, question, option1, option2, option3, option4, answer);
        m.addAttribute("sms", "save success");
        return "Addquestion";
    }

    @GetMapping("/exam")
    public String exam(Model model) {

        String sql = "select * from questions";
        List<Map<String, Object>> li = jdbc.queryForList(sql);
        model.addAttribute("all_question", li);
        return "exam";
    }

}
