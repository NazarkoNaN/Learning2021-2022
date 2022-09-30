function moveLeft(){
  if (line.indexOf('-') == 0){
    document.close();
    line = line.substring(1);
    line = line.concat('-');
    document.write(line);
  } else{
    clearInterval(timer);
    timer = setInterval(moveRight, 100);
  }
}

function moveRight(){
  if (line.indexOf('-', line.length - 1) != -1){
    document.close();
    line = line.substring(0, line.length - 1);
    line = '-' + line;
    document.write(line);
  } else{
    clearInterval(timer);
    timer = setInterval(moveLeft, 100);
  }
}

var line = "------------------------------------------------@";
let timer = setInterval(moveLeft, 100);
