function isInteger(num) {
  return (num ^ 0) === num;
}

let first = "";
while (first <= 0 || isInteger(first) == false){
  first = prompt("Введіть перше додатне ціле число.", "");
  first = Number(first);
};

let second = "";
while (second <= 0 || isInteger(second) == false){
  second = prompt("Введіть друге додатне ціле число.", "");
  second = Number(second);
};

let res = 0;
for(i = 0; i <= first && i <= second; i++)
{
  res = first/i;
  if(isInteger(res))
  {
    res = second/i;
    if(isInteger(res))
    {
      res = i/7;
      if(isInteger(res))
      {
        alert("Спільний дільник: " + i);
      }
    }
  }
}
