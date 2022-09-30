function move(){
 
  if((document.getElementById('circle').offsetLeft + document.getElementById('circle').offsetWidth + document.getElementById('square').offsetWidth - 30)+850 <= document.getElementById('canvas').clientWidth){
    document.getElementById('circle').style.top = y+'px';
    document.getElementById('circle').style.left = x + 'px';
    x += offsetX;
    y -= offsetY;
  }else if((document.getElementById('circle').offsetTop + document.getElementById('circle').offsetHeight) <= document.getElementById('canvas').clientHeight) {
    document.getElementById('circle').style.top = y+'px';
    document.getElementById('circle').style.left = x + 'px';
    x += offsetX;
    y += offsetY;
  } else{
    clearInterval(moveInt);
  }
}

document.getElementById('canvas').setAttribute('style', 'background-color: #ffffff; height: 700px;');
document.getElementById('triangle').setAttribute('style', 'position: absolute; left: 1px; top: 615px;');
document.getElementById('circle').setAttribute('style', 'position: absolute;');
document.getElementById('square').setAttribute('style', 'position: absolute; left: 50%; top: 315px;');

var x = 10;
var y = 700;
var offsetY = 3;
var offsetX = 10;
document.getElementById('circle').style.left = x + 'px';
document.getElementById('circle').style.top = y + 'px';
var moveInt = setInterval(move, 10);
