function moveLeft(){
  if (line.indexOf('_') == 0){
    document.close();
    line = line.substring(1);
    line = line.concat('_');
    document.write(line);
  } else{
    clearInterval(timer);
    timer = setInterval(moveRight, 100);
  }
}

function moveRight(){
  if (line.indexOf('_', line.length - 1) != -1){
    document.close();
    line = line.substring(0, line.length - 1);
    line = '_' + line;
    document.write(line);
  } else{
    clearInterval(timer);
    timer = setInterval(moveLeft, 100);
  }
}

var line = "________________what?";
let timer = setInterval(moveLeft, 100);
