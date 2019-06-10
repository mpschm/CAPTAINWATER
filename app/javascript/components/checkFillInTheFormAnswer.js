const checkFillInTheFormAnswer = (questionFillIn) => {
  const html = "<input type='text' id='answer-fill-in'/>";
  questionFillIn.innerHTML = questionFillIn.innerText.replace(/(\...)/, html);
  const submitBtn = document.getElementById('submit-answer')
  const selectInput = document.querySelector('#user_answer_answer_id')
  const goodAnswer = document.querySelector('#user_answer_answer_id > option:last-child')

  const answerInput = document.getElementById('answer-fill-in')
  let userAnswer

  if (answerInput) {
    answerInput.addEventListener('change', (e) => {
      userAnswer = e.currentTarget.value;
      if (userAnswer === goodAnswer.innerText) {
        selectInput.value = goodAnswer.value
      }
    })

  }
}

export { checkFillInTheFormAnswer };
