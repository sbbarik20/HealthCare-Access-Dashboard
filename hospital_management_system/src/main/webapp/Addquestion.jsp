<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


<form action="/save_form" method="post">
    <figure class="text-center">
        <blockquote class="blockquote">
          <p>Exam</p>
        </blockquote>
        <figcaption class="blockquote-footer">
          Organized by SDI<cite title="Source Title">   </cite>
        </figcaption>
      </figure>
    <h2>Question</h2>
    <input type="text" id="question" name="question" required class="form-control" placeholder="Question">
    <br>
    Option 1 : <input type="text" id="option1" name="option1" required class="form-control" placeholder="Option 1">
    <br>
    Option 2 : <input type="text" id="option2" name="option2" required class="form-control" placeholder="Option 2">
    <br>
    Option 3 : <input type="text" id="option3" name="option3" required class="form-control" placeholder="Option 3">
    <br>
    Option 4 : <input type="text" id="option4" name="option4" required class="form-control" placeholder="Option 4">
    <br>
    Answer : <input type="text" id="answer" name="answer" required class="form-control" placeholder="Answer">
    <br>
    <input type="submit" value="Submit" class="btn btn-primary">

    ${sms}
</form>