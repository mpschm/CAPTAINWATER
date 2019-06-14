const changeSlideOnNext = () => {
  const btnNext = document.getElementById("btn_next");
  if (btnNext) {
    btnNext.addEventListener("click", (event) => {
      const currentSlideNumber = btnNext.dataset.currentSlide;
      const nextSlideNumber = parseInt(currentSlideNumber) + 1;
      const currentSlide = document.querySelector("[data-slide='" + currentSlideNumber + "']")
      const nextSlide = document.querySelector("[data-slide='" + nextSlideNumber + "']")
      if (currentSlideNumber < 3) {
        btnNext.dataset.currentSlide = nextSlideNumber;
        if (currentSlide) {
          currentSlide.classList.add("d-none");
        } else {
          document.querySelector("[data-slide]:not(.d-none)").addClass("d-none");
        }
        nextSlide.classList.remove("d-none");
        document.querySelector("[data-slide-input='" + nextSlideNumber + "']").checked = true
      }
      if (nextSlideNumber === 3) {
        const playBtn = document.getElementById("play");
        btnNext.classList.add("d-none");
        playBtn.classList.remove("d-none");
      }
    })
  }
}

const changeSlideOnCheckbox = () => {
  const checkboxes = document.querySelectorAll("[data-slide-input]");
  checkboxes.forEach((checkbox) => {
    checkbox.addEventListener('click', (event) => {
      const targetSlideNumber = parseInt(event.currentTarget.dataset.slideInput);
      const btnNext = document.getElementById("btn_next");
      btnNext.dataset.currentSlide = targetSlideNumber - 1
      btnNext.click();
    })
  })
}

changeSlideOnNext();


// if (location.href.includes('full')) {
//   document.querySelector('.toast').parentElement.removeChild(document.querySelector('.toast'));
// }
// const onboarding = document.querySelector('.onboarding');
// const bookmarks = document.querySelectorAll("form input[type=\"radio\"]");
// const btnNext = document.querySelectorAll("a.btn-next");
// btnNext.forEach((button) => {
//   button.addEventListener("click", (e) => {
//     const pageNumber = parseInt(getComputedStyle(onboarding).getPropertyValue('--page-number')) + 1;
//     if (pageNumber < 4) {
//       onboarding.style.setProperty('--page-number', pageNumber);
//       bookmarks[pageNumber-1].checked = true;
//       if (pageNumber === 3) {
//         btnNext.forEach((button2) => {
//           button2.classList.toggle('d-none');
//         });
//       }
//     }
//     else {
//       onboarding.style.setProperty('--page-number', 1);
//       bookmarks[0].checked = true;
//     }
//   });

// });


// window.addEventListener('load', event => {

// });

