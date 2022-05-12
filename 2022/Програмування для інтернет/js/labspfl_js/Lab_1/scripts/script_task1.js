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

if(first>second){
    var a=fitst;
    first = second;
    second = a;
}

let res = "";
for(i = first; i <= second; i++){ 
    if(i%3==0 && i%2==0){
        res += " " + i;
        i+=2;
    }
}

alert("всі парні числа, які діляться без залишку на 3:" + res);