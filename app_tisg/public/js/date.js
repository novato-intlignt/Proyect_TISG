(function(){
    var actualizarHora =function(){
      var fecha = new Date(),
          dia = fecha.getDate(),
          mes = fecha.getMonth(),
          año = fecha.getFullYear();
  
  
      var pDia = document.getElementById('dia'),
          pMes = document.getElementById('mes'),
          pAño = document.getElementById('año');
  
      pDia.textContent = dia;
      
      var meses = ['01', '02', '03', '04', '05', '06', '07', '08',  '09', '10', '11',  '12'];
  
      pMes.textContent = meses[mes];
  
      pAño.textContent = año;
    };
  
    actualizarHora();
    var intervalo = setInterval(actualizarHora, 1000)
  
}());