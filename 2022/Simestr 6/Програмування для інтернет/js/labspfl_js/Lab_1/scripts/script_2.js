var a ="";
        do{
            a=prompt("перше додатнє чсло: ","");
            a=Number(a);
        }while(a<=0 || !((a ^ 0) === a));

        var b ="";
        do{
            b=prompt("друге додатнє чсло: ","");
            b=Number(b);
        }while(b<=0 || !((b ^ 0) === b));

        if(a>b){
            var c = a;
            a = b;
            b = c;
        }

        var answer = "";
        for(var i = a;i<=b;i++){
            if(i%2==0 &&i%3==0)
                answer+=i+" ";
        }
        alert("Всі числа кратні 3 та 2 :\n" + answer);