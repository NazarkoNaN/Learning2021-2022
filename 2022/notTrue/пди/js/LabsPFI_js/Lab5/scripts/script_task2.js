function move(){
  document.getElementById('move').style.left = rx * Math.cos(p) + 'px';
  document.getElementById('move').style.top = ry * Math.sin(p) + 'px';
  rx += rxOffset;
  ry += ryOffset;

  if(document.getElementById('move').offsetLeft + document.getElementById('move').offsetWidth > document.getElementById('body').clientWidth){
    rxOffset = -rxOffset;
    p = Math.PI - p;
    rx = document.getElementById('body').clientWidth;
    p = Math.PI - p;
  }

  if(document.getElementById('move').offsetLeft < 0){
    rxOffset = -rxOffset;
    p = Math.PI - p;
    rx = 0;
    p = Math.PI - p;
  }

  if(document.getElementById('move').offsetTop + document.getElementById('move').offsetHeight > document.getElementById('body').clientHeight){
    ryOffset = -ryOffset;
    p = Math.PI - p;
    ry = document.getElementById('body').clientHeight;
    p = Math.PI - p;
  }

  if(document.getElementById('move').offsetTop < 0){
    ryOffset = -ryOffset;
    p = Math.PI - p;
    ry = 0;
    p = Math.PI - p;
  }
}

var p = Math.PI/6;
var rx = 0;
var ry = 0;
var rxOffset = 1;
var ryOffset = 1;
var moveInt = setInterval(move, 1);
