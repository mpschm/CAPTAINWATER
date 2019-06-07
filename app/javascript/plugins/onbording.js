if (location.href.includes('full')) {
  document.querySelector('.toast').parentElement.removeChild(document.querySelector('.toast'));
}
const onboarding = document.querySelector('.onboarding');
const bookmarks = document.querySelectorAll("form input[type=\"radio\"]");
const btnNext = document.querySelectorAll("a.btn-next");
btnNext.forEach((button) => {
  button.addEventListener("click", (e) => {
    const pageNumber = parseInt(getComputedStyle(onboarding).getPropertyValue('--page-number')) + 1;
    if (pageNumber < 4) {
      onboarding.style.setProperty('--page-number', pageNumber);
      bookmarks[pageNumber-1].checked = true;
      if (pageNumber === 3) {
        btnNext.forEach((button2) => {
          button2.classList.toggle('d-none');
        });
      }
    }
    else {
      onboarding.style.setProperty('--page-number', 1);
      bookmarks[0].checked = true;
    }
  });

});


window.addEventListener('load', event => {

});

