document.body.addEventListener('click', function (event) {
  if(event.target.classList.contains('form-check-input')) {
    let choices = document.querySelectorAll("label");
    choices.forEach((choice) => {
    let rightAnswer = document.getElementById("correct-answer").textContent;
      if (choice.textContent == rightAnswer) {
        choice.style.borderColor = "green";
        choice.style.backgroundColor ="white";
        choice.style.color = "green";
      }
      else {
        choice.style.backgroundColor="transparent";
        choice.style.color = "white";
      }
    });
    setTimeout(function() {
      document.getElementById("new_user_answer").submit();
    }, 1000);
}
});

// Disable les buttons
// Mettre style sur bonne réponse
// Jouer le submit avec un setTimeout(function() {}, 10);
