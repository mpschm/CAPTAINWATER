import "bootstrap";
import "../plugins/onbording";
import { timer } from "../plugins/timer";
import { timerGame } from "../plugins/timergame";
import { checkFillInTheFormAnswer } from '../components/checkFillInTheFormAnswer';
import "../plugins/quizsubmit";
import { showModalInProfil } from '../components/show_modal_in_profil';
import { formChoice } from '../components/form_choice';

formChoice();

window.timer = timer;

let questionSide = document.querySelector('#quiz-container');

const btnLaunch = document.querySelector('.btn-launch');
if (btnLaunch) {
  btnLaunch.addEventListener('click', (e) => {
    timer();
  })
}
const truc = document.querySelector('[data-current-step]');
if (truc) {
  const currentStep = truc.dataset.currentStep;
  if (currentStep > 1) {
    timer();
  }
}



const questionFillIn = document.querySelector('.question-fill-in-the-blanks');
if (questionFillIn) {
  checkFillInTheFormAnswer(questionFillIn);
}


if (document.querySelector('.boat-page')) {
  timerGame();
}

/*
to modify total time, just input on variable totaltime
*/

const wrongName = document.getElementById("wrong_name");
if (wrongName) {
  const wrongNameValue = wrongName.innerText;
  console.log(wrongNameValue);
  if (wrongNameValue === "true") {
    showModalInProfil();
  }
}
