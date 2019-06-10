const timer = () => {
  const countdownNumberEl = document.getElementById('countdown-number');
  var countdown = 10;
  var submit = document.getElementById("submit-answer");

countdownNumberEl.textContent = countdown;

  setInterval(function() {
    if (countdown > 0) {
        countdown = countdown -1
        // countdown = --countdown <= 0 ? 10 : countdown;
      countdownNumberEl.textContent = countdown;
      if (countdown === 0) {
        submit.click()
      }
     }
      }, 1000);
}

export { timer }
