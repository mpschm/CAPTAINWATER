document.body.addEventListener('click', function (event) {
  if(event.target.classList.contains('form-check-input')) {

    setTimeout(function() {
      let choices = document.querySelectorAll("label");
      choices.forEach((choice) => {
      let rightAnswer = document.getElementById("correct-answer").textContent;
      if (choice.textContent == rightAnswer) {
        choice.classList.add("right-answer");
      }
      else {
        choice.classList.add("other-answer");
      }
      });
      setTimeout(function() {
        document.getElementById("new_user_answer").submit();
      }, 1000);
    }, 1000);
}


});

// Disable les buttons
// Mettre style sur bonne réponse
// Jouer le submit avec un setTimeout(function() {}, 10);
