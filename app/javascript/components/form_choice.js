const formChoice = () => {
  const choices = document.querySelectorAll(".choice");
  choices.forEach((choice) => {
    choice.addEventListener("click", (event) => {
      const choiceText = event.currentTarget.innerText;
      const hiddenInput = document.getElementById("calculator_dietatary_habit");
      hiddenInput.value = choiceText;
      choices.forEach((choice2) => {
        choice2.classList.remove("chosen");
      })
      choice.classList.add("chosen");
    });

  })
}

export { formChoice };
