function getRandomColor() {
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

function removeAwfulBackgroundColor() {
  document.body.style.background = "#FFFFFF";
}

if (document.getElementById("make-not-annoying-button")) {
  document.getElementById("make-not-annoying-button").onclick = function() {
    removeAwfulBackgroundColor();
  };
}

if (document.getElementById("show-solution")) {
  document.getElementById("show-solution").onclick = function() {
    document.getElementById("solution").style.display = "block";
  }
}
