var aYear = "";
var aMonth = "";
aYear = prompt("Введіть рік для пошуку у форматі ####.", "");
aMonth = prompt("Введіть місяць для пошуку у форматі від 1 до 12", "");

var months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"];
var days = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Нд"];

var now = new Date(aYear, (aMonth-1));
now.setDate(1);
var dayOfWeek = now.getDay();

if(dayOfWeek == 0){
  dayOfWeek = 7;
}

var currentMonth = now.getMonth();
var daysInMonth = 28;

while(currentMonth == now.getMonth()){
  now.setDate(++daysInMonth);
}

--daysInMonth;

var lastMonth = now.getMonth() - 1;
var daysInLastMonth = 28;

while(lastMonth == (now.getMonth() - 1)){
  now.setDate(++daysInLastMonth);
}

--daysInLastMonth;

now = new Date();
if(now.getMonth() == currentMonth){
  var today = now.getDate();
} else{
  var today = 0;
}


document.write('<table class="calendar"><caption><h2>Календар за '+ months[currentMonth] + ' ' + aYear + ' року</h2></caption><tbody>');
document.write('<tr class="calendar">');

for(var d = 0; d < 7; d++){
  document.write('<td class="days"');

  if(d > 4){
    document.write(' id="holiday"');
  }

  document.write('>' + days[d] + '</td>');
}

document.write('</tr>');
var wednesday = 0;

for(var i = 2 - dayOfWeek; i <= 43 - dayOfWeek; i++){
  if((i-1+dayOfWeek)%7 == 1){
    document.write('<tr class="calendar">');
  }

  document.write('<td');

  if(((i-1+dayOfWeek)%7 == 0 || (i+dayOfWeek)%7 == 0) && i != today){
    document.write(' id="holiday"');
  }

  if(i < 1){
    var date = daysInLastMonth;
    for(var j = i; j < 0; j++){
      date--;
    }
    document.write(' class="notNow">' + (date) + '</td>');
  } else if(i > daysInMonth){
    document.write(' class="notNow">' + (i-daysInMonth) + '</td>');
  } else if(i == today) {
    document.write(' class="calendar" id="today">' + i + '</td>');
  } else{
    document.write(' class="calendar">' + i + '</td>');

    if(wednesday == 0 && (i+3+dayOfWeek)%7 == 0){
      wednesday = i;
    }
  }
  if((i-1+dayOfWeek)%7 == 0){
    document.write('</tr>');
  }
}

document.write('</tbody></table>');
document.write('<p>Дата першої середи цього місяця: ' + wednesday + '.</p>');
