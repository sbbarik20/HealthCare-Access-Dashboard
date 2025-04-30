<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <form action="/saveStudentAnswer" method="post">
    
<c:forEach var="question" items="${all_question}">
    <div>
        <label for="" class="h4"> Question- ${question.question}</label>
        <br>
        a.<input type="radio" name="q${question.sl_no}" value="1">${question.option1}
        <br>
        b.<input type="radio" name="q${question.sl_no}" value="2">${question.option2}
        <br>
        c.<input type="radio" name="q${question.sl_no}" value="3">${question.option3}
        <br>
        d. <input type="radio" name="q${question.sl_no}" value="4">${question.option4}
    </div>
    <br>
</c:forEach>
<input type="submit" value="submit Amswer" class="btn btn-primary" >
</form>