  $(document).ready(function(){

var target = document.querySelector('#toggle');
var menu = document.querySelector('body');

target.onclick = function() {
  menu.classList.toggle('show');
  var x = document.getElementById("toggle");
  if (x.innerHTML === "Menu") {
      x.innerHTML = "Close";
    } else {
      x.innerHTML = "Menu";
    }
}

});
