function habilitarbtn() {
  var Cliente = document.getElementById("Cliente").value,
    Telefono = document.getElementById("Telefono").value,
    Actitud = document.getElementById("Actitud").value,
    Producto = document.getElementById("Producto").value,
    Codigo = document.getElementById("Codigo").value,
    Cantidad = document.getElementById("Cantidad").value,
    Precio = document.getElementById("Precio").value,
    submit = document.getElementById("btn_submit");

  val = 0;

  if (Cliente == "") {
    val += 1;
  }
  if (Telefono == "") {
    val += 1;
  }
  if (Actitud == "") {
    val += 1;
  }
  if (Producto == "") {
    val += 1;
  }
  if (Codigo == "") {
    val += 1;
  }
  if (Cantidad == "") {
    val += 1;
  }
  if (Precio == "") {
    val += 1;
  }

  if (val == 0) {
    submit.classList.add('disabled');
  } else {
    submit.classList.remove('disabled');
  }
}
document.getElementById("Cliente").addEventListener("keyup, habilitarbtn");
document.getElementById("Telefono").addEventListener("keyu, habilitarbtnp");
document.getElementById("Actitud").addEventListener("keyup, habilitarbtn");
document.getElementById("Producto").addEventListener("keyu, habilitarbtnp");
document.getElementById("Codigo").addEventListener("keyup, habilitarbtn");
document.getElementById("Cantidad").addEventListener("keyu, habilitarbtnp");
document.getElementById("Precio").addEventListener("keyup, habilitarbtn");