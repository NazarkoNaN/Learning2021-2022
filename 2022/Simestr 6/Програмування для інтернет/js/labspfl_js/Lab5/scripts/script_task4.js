function move(){
  document.getElementById('move').style.left = x + '%';
  y = Math.exp(x) * Math.exp(Math.pow(x, 2));

  if(y < 10 && y > -10){
      document.getElementById('move').style.top = y + 40 + '%';
  }

  x += xOffset;

  if((document.getElementById('move').offsetLeft + document.getElementById('move').offsetWidth > document.getElementById('body').clientWidth) ||
  (document.getElementById('move').offsetTop + document.getElementById('move').offsetHeight > document.getElementById('body').clientHeight)){
    clearInterval(moveInt);
  }
}

var x = 0;
var y = 0;
var xOffset = 1;
var moveInt = setInterval(move, 50);
