import "bootstrap";
import "../plugins/onbording";
import { timer } from "../plugins/timer";
import { timerGame } from "../plugins/timergame";
import { checkFillInTheFormAnswer } from '../components/checkFillInTheFormAnswer';
import "../plugins/quizsubmit";


let questionSide = document.querySelector('#quiz-container');

const btnLaunch = document.querySelector('.btn-launch');
if (btnLaunch) {
  btnLaunch.addEventListener('click', (e) => {
    timer();
  })
}
const currentStep = document.querySelector('[data-current-step]').dataset.currentStep;
if (currentStep > 1) {
  timer();
}



const questionFillIn = document.querySelector('.question-fill-in-the-blanks');
if (questionFillIn) {
  checkFillInTheFormAnswer(questionFillIn);
}


if (document.getElementById('countdown-boat-game-number')) {
  timerGame();
}

/*
to modify total time, just input on variable totaltime
*/

