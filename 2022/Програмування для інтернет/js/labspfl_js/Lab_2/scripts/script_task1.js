function show(arr)
{
  for(var i = 0; i < arr.length; i++){
    alert(arr[i]);
  }
}

var array1 = new Array(2,5,2,3,4);
alert("Початковий масив: ");
show(array1);
array1.sort();
alert("Після виконання sort: ");
show(array1);

var array2 = new Array(2,5,2,3,4);
alert("Початковий масив: ");
show(array2);
array2.splice(1,2,'9','10');
alert("Після виконання splice: ");
show(array2);

var array3 = new Array(2,5,2,3,4);
alert("Початковий масив: ");
show(array3);
alert("Після виконання toString: " + array3.toString());

var array4 = new Array(2,5);
alert("Початковий масив: " + array4.toString());
array4.unshift(2,3,4);
alert("Після виконання unshift: " + array4.toString());

var array51 = new Array(2,5);
var array52 = new Array(2,3);
alert("Початкові масиви: " + array51.toString() + " і " + array52.toString());
var array53 = array51.concat(array52, 4);
alert("Після виконання concat: " + array53.toString());

var array6 = new Array(2,5,2,3,4);
alert("Початковий масив: " + array6.toString());
alert("Після виконання join: " + array6.join("_"));

var array7 = new Array(2,5,2,3,4);
alert("Початковий масив: " + array7.toString());
alert("Після виконання pop: видалений елемент - " + array7.pop() + ", масив - " + array7.toString());

var array8 = new Array(2,5);
alert("Початковий масив: " + array8.toString());
array8.push(2,3,4);
alert("Після виконання push: " + array8.toString());

var array9 = new Array(2,5,2,3,4);
alert("Початковий масив: " + array9.toString());
alert("Після виконання reverse: " + array9.reverse());

var array10 = new Array(2,5,2,3,4);
alert("Початковий масив: " + array10.toString());
alert("Після виконання shift: видалений елемент - " + array10.shift() + ", масив - " + array10.toString());

var array11 = new Array(2,5,2,3,4);
alert("Початковий масив: " + array11.toString());
alert("Після виконання slice: " + array11.slice(1,4));
