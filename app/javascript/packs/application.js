import "bootstrap";
import "../plugins/onbording";
import { timer } from "../plugins/timer";
import "../plugins/quizsubmit";


if (document.getElementById('countdown-number')) {
  timer();
}
