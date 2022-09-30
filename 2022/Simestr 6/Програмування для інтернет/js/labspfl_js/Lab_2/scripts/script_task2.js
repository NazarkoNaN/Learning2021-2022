function showArr(arr){
  if(arr.length == 1)
  {
    alert("Масив: " + arr[0]);
  }
  else{
    var last = arr.pop();
    alert("Масив: " + arr.join(", ") + " і " + last);
  }
}

function showStatus(){
  window.status = "Status is not supported";
}

setInterval(showStatus, 1000)

var a = ['Текст'];
var b = ['День','ніч'];
var c = ['Зима','весна','літо','осінь'];

showArr(a);
showArr(b);
showArr(c);
