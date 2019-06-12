import "bootstrap";
import "../plugins/onbording";
import { timer } from "../plugins/timer";
import { timerGame } from "../plugins/timergame";
import { checkFillInTheFormAnswer } from '../components/checkFillInTheFormAnswer';
import "../plugins/quizsubmit";


if (document.getElementById('countdown-number')) {
  // timer();
}

const questionFillIn = document.querySelector('.question-fill-in-the-blanks');
if (questionFillIn) {
  checkFillInTheFormAnswer(questionFillIn);
}

// if (document.getElementById('countdown-game-boat-number')) {
//   timerGame();
// }
