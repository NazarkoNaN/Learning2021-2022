function hide(){
  if(document.getElementById('text').getAttribute('style') == 'color: #800000; text-shadow: none;'){
    document.getElementById('text').setAttribute('style', "color: #ffffff;");
  } else{
    document.getElementById('text').setAttribute('style', "color: #800000; text-shadow: none;");
  }
}

let timer = setInterval(hide, 100);
