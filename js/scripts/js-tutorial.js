function getRandomColor() {
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

function removeAwfulBackgroundColor() {
  document.body.style.background = "#FFFFFF";
}

document.getElementById("make-not-annoying-button").onclick = function() {
  removeAwfulBackgroundColor();
};
