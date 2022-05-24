function show(){
  var last = current;
  current = rand()

  while(current > arr.length || current == last){
    current = rand();
  }

  document.getElementById('slide').setAttribute('src', arr[current]);
}

function rand(){
  min = Math.ceil(0);
  max = Math.floor(arr.length+1);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

var arr = ['images//0.jpg', 'images//1.jpg', 'images//2.jpg', 'images//3.jpg', 'images//4.jpg', 'images//5.jpg'];
var current = 0;
setInterval(show, 1000);
