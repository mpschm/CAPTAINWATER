import $ from 'jquery';

const timer = () => {
  var totaltime = 10;
  var submit = document.getElementById("submit-answer");
  function update(percent){
    var deg;
    if(percent<(totaltime/2)){
      deg = 90 + (360*percent/totaltime);
        $('.pie').css('background-image',
                  'linear-gradient('+deg+'deg, transparent 50%, white 50%),linear-gradient(90deg, white 50%, transparent 50%)'
                 );
    } else if(percent>=(totaltime/2)){
            deg = -90 + (360*percent/totaltime);
            $('.pie').css('background-image',
                  'linear-gradient('+deg+'deg, transparent 50%, #1fbba6 50%),linear-gradient(90deg, white 50%, transparent 50%)'
                 );
            }
  }

  var count = parseInt($('#time').text());
  setInterval(function () {
    if (count > 0) {
      count-=1;
      $('#time').html(count);
      update(count);
    }

    if (count==0) {
       setTimeout(function() {
        let choices = document.querySelectorAll("label");
        choices.forEach((choice) => {
        let rightAnswer = document.getElementById("correct-answer").textContent;
        if (choice.textContent == rightAnswer) {
          choice.classList.add("right-answer");
          // choice.style.borderColor = "green";
          // choice.style.backgroundColor ="white";
          // choice.style.color = "green";
        }
        else {
          // choice.style.backgroundColor = "transparent";
          // choice.style.color = "white";
          choice.classList.add("other-answer");
        }
        });
        setTimeout(function() {
        submit.click()
        }, 1000);
      }, 1000);
    };
  }, 1000);
}

export { timer }

