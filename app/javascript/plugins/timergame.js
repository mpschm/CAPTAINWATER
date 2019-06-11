const timerGame = () => {
  const countdownNumberGame = document.getElementById('countdown-boat-game-number');
  var countdownGame = 30;
  var submitGame = document.getElementById("submit-answer-boat-game");

countdownNumberGame.textContent = countdownGame;

  setInterval(function() {
    console.log(countdownGame);
    if (countdownGame > 0) {
        countdownGame = countdownGame -1
        countdownGame = --countdownGame <= 0 ? 30 : countdownGame;
      countdownNumberGame.textContent = countdownGame;
      if (countdownGame === 0) {
        submitGame.click()
      }
     }
      }, 3000);
}

export { timerGame }
