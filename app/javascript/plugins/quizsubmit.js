
// document.querySelectorAll("label").forEach((choice) => {
//   choice.addEventListener("click", (event) => {
//     document.getElementById("submit-answer").click();
//   });
// });

document.body.addEventListener('click', function (event) {
if(event.target.classList.contains('form-check-input')) {
  // document.querySelectorAll("label").setAttribute("disabled");

document.getElementById("new_user_answer").submit();
}
});

// Disable les buttons
// Mettre style sur bonne réponse
// Jouer le submit avec un setTimeout(function() {}, 10);
