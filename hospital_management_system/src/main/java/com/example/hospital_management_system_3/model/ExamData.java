package com.example.hospital_management_system_3.model;

public class ExamData {

    private String q1;
    private String q2;
    private String q3;
    private String q4;
    private String q5;
    private String q6;
    private String q7;
    private String q8;
    private String q9;
    private String q10;

    public String getq1() {
        return q1;
    }

    public void setq1(String q1) {
        this.q1 = q1;
    }

    public String getq2() {
        return q2;
    }

    public void setq2(String q2) {
        this.q2 = q2;
    }

    public String getq3() {
        return q3;
    }

    public void setq3(String q3) {
        this.q3 = q3;
    }

    public String getq4() {
        return q4;
    }

    public void setq4(String q4) {
        this.q4 = q4;
    }

    public String getq5() {
        return q5;
    }

    public void setq5(String q5) {
        this.q5 = q5;
    }

    public String getq6() {
        return q6;
    }

    public void setq6(String q6) {
        this.q6 = q6;
    }

    public String getq7() {
        return q7;
    }

    public void setq7(String q7) {
        this.q7 = q7;
    }

    public String getq8() {
        return q8;
    }

    public void setq8(String q8) {
        this.q8 = q8;
    }

    public String getq9() {
        return q9;
    }

    public void setq9(String q9) {
        this.q9 = q9;
    }

    public String getq10() {
        return q10;
    }

    public void setq10(String q10) {
        this.q10 = q10;
    }

    @Override
    public String toString() {
        return "{\"q1\": " + q1 + ", \"q2\": " + q2 + ", \"q3\": " + q3 + ", \"q4\": " + q4 + ", \"q5\": " + q5
                + ", \"q6\": " + q6 + ", \"q7\": " + q7 + ", \"q8\": " + q8 + ",\"q9\": " + q9 + ", \"q10\": " + q10+ ",}";
    }

    public String[] getAnsArray() {
        String[] arr = { null, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10 };
        return arr;
    }
} 
