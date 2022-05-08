function showTime(){
  document.close();
  var now = new Date();
  document.write(now.getHours() + ':' + now.getMinutes() + ':');
  var sec = now.getSeconds();
  if(sec < 10){
    document.write('0');
  }
  document.writeln(sec);
}

setInterval(showTime, 250);
