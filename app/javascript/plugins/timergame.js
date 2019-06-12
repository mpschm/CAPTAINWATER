import $ from 'jquery';


const timerGame = () => {
  var totaltimeGame = 30;
  var submitGame = document.getElementById("score_form");
  function updateGame(percent){
    var degGame;
    if(percent<(totaltimeGame/2)){
      degGame = 90 + (360*percent/totaltimeGame);
      $('.pie-game').css('background-image',
        'linear-gradient('+degGame+'deg, transparent 50%, white 50%),linear-gradient(90deg, white 50%, transparent 50%)'
      );
    } else if (percent>=(totaltimeGame/2)) {
      degGame = -90 + (360*percent/totaltimeGame);
      $('.pie-game').css('background-image',
        'linear-gradient('+degGame+'deg, transparent 50%, #1fbba6 50%),linear-gradient(90deg, white 50%, transparent 50%)'
      );
    }
  }

  var countGame = parseInt($('#time-game').text());
  setInterval(function () {
    if (countGame > 0) {
      countGame-=1;
      $('#time-game').html(countGame);
      updateGame(countGame);
    }

    if (countGame==0) {
      setTimeout(function() {
        submitGame.submit()
        }, 1000);
    };
  }, 1000);
}

export { timerGame }
