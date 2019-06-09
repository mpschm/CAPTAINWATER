
// document.querySelectorAll("label").forEach((choice) => {
//   choice.addEventListener("click", (event) => {
//     document.getElementById("submit-answer").click();
//   });
// });

var choices = document.querySelectorAll("label");
// Listen for click events on body
document.body.addEventListener('click', function (event) {
    if (choices.contains(event.target)) {
        document.getElementById("submit-answer").click();
    }
});
