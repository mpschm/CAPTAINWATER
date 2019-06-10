import "bootstrap";
import "../plugins/onbording";
import { timer } from "../plugins/timer";
import { checkFillInTheFormAnswer } from '../components/checkFillInTheFormAnswer'



if (document.getElementById('countdown-number')) {
  timer();
}

const questionFillIn = document.querySelector('.question-fill-in-the-blanks');
if (questionFillIn) {
  checkFillInTheFormAnswer(questionFillIn);
}
