document.write('<table><caption><h2>Таблиця множення</h2></caption><tbody>');

for(var i = 1; i < 11; i++){
  document.write('<tr>');
  for(var j = 1; j < 11; j++){
    if(i == 1 || j==1){
      document.write('<td class="tab"><u>' + (i*j) + '</u></td>');
    } else{
      document.write('<td>' + (i*j) + '</td>');
    }
  }
  document.write('</tr>');
}
document.write('</tbody></table>');
