function func(x){
  document.write('<tr  class="calendar">');
  for(var j = 0; j < 4; j++){
    document.write('<td  class="calendar"');

    if(j == 0){
      document.write('>' + x);
    } else{
      switch (j) {
        case 1:
        y = Math.sin(x) + 2*x;
          break;
        case 2:
        y = Math.cos(4*x) - 2*x/(x+5);
          break;
        case 3:
        y = Math.pow(x,3) - 10*x - 5;
          break;
        default:
      }

      if(y > 5){
        document.write(' id="holiday"');
      }

      document.write('>' + y);
    }
    document.write('</td>');
  }
  document.write('</tr>');
}

var x0 = 0;
var x1 = 0;
var step = 0;
x0 = Number(prompt("Введіть початкове значення x.", ""));
x1 = Number(prompt("Введіть кінцеве значення х.", ""));
step = Number(prompt("Введіть крок функції.", ""));

var main = ["x", "y = sinx + 2*x", "y = cos4x - 2*x/(x+5)", "y = x^3 - 10*x -5"]

document.write('<table class="calendar"><caption><h2>Результати розрахунку функцій при х від ' + x0 + ' до ' + x1 + ', з кроком ' + step + '</h2></caption><tbody>');

for(var m = 0; m < 4; m++){
  document.write('<td class="days">' + main[m] + '</td>');
}

var y = 0;

for(var x = x0; x <= x1; x+=step){
  func(x);
}

if(x > x1 && x-1 != x1){
  func(x1);
}

document.write('</tbody></table>');
