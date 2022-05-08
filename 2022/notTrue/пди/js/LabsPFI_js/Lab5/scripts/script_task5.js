function move(){
  if((document.getElementById('circle').offsetLeft + document.getElementById('circle').offsetWidth + document.getElementById('square').offsetWidth - 30) <= document.getElementById('canvas').clientWidth){
    document.getElementById('circle').style.left = x + 'px';
    x += offset;
  } else if((document.getElementById('circle').offsetTop + document.getElementById('circle').offsetHeight) <= document.getElementById('canvas').clientHeight){
    document.getElementById('circle').style.top = y + 'px';
    y += offset;
  } else{
    clearInterval(moveInt);
  }
}

document.getElementById('canvas').setAttribute('style', 'background-color: #ffffff; height: 700px;');
document.getElementById('triangle').setAttribute('style', 'position: absolute; left: 1px; top: 1px;');
document.getElementById('circle').setAttribute('style', 'position: absolute;');
document.getElementById('square').setAttribute('style', 'position: absolute; right: 1px; top: 1px;');

var x = 20;
var y = 30;
var offset = 10;
document.getElementById('circle').style.left = x + 'px';
document.getElementById('circle').style.top = y + 'px';
var moveInt = setInterval(move, 10);
