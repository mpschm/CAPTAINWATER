const showModalInProfil = () => {
  const btn1 = document.getElementById("button1");
  const btn2 = document.getElementById("button2");
  const alert = document.querySelector("#join_game .invalid-feedback");
  if (btn1 && btn2) {
    btn1.click();
    btn2.click();
    alert.innertText = "wrong name, please try again..."
  }
}

export { showModalInProfil };
