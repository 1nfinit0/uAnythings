function validarEmail() {
  const email = document.getElementById("email").value;
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    window.alert("Por favor, introduce un correo electrónico válido.");
    return false;
  }
  window.alert("Correo electrónico válido: " + email);
  return true;
}
function agregarProductos() {
  const seleccionados = [];
  buttonSeleccion = document.getElementById("boton-agregar");
  ul = document.getElementById("lista-carrito");
  if (document.getElementById("panBlanco").checked) {
    seleccionados.push("Pan Blanco");
  }
  if (document.getElementById("panIntegral").checked) {
    seleccionados.push("Pan Integral");
  }
  if (document.getElementById("croissant").checked) {
    seleccionados.push("Croissant");
  }
  if (document.getElementById("donas").checked) {
    seleccionados.push("Donas");
  }

  ul.innerHTML = "";
  seleccionados.forEach(function (producto) {
    const li = document.createElement("li");
    li.textContent = producto;
    ul.appendChild(li);
  });
}
function vaciarCarrito() {
  botonVaciar = document.getElementById("vaciar-carrito");
  botonVaciar.addEventListener("click", function () {
    ul.innerHTML = "";
  });
}
function mostrarVideo() {
  videoContainer = document.getElementById("videoSource");
  if (document.getElementById("pan-blanco").checked) {
    videoContainer.innerHTML = '<video controls><source src="../videos/pan_blanco.mp4" type="video/mp4">Tu navegador no soporta el elemento de video.</video>';
  }
  if (document.getElementById("pan-integral").checked) {
    videoContainer.innerHTML =
      '<video controls><source src="../videos/pan_integral.mp4" type="video/mp4">Tu navegador no soporta el elemento de video.</video>';
  }
  if (document.getElementById("croissant").checked) {
    videoContainer.innerHTML =
      '<video controls><source src="../videos/croissant.mp4" type="video/mp4">Tu navegador no soporta el elemento de video.</video>';
  }
  if (document.getElementById("donas").checked) {
    videoContainer.innerHTML =
      '<video controls><source src="../videos/donas.mp4" type="video/mp4">Tu navegador no soporta el elemento de video.</video>';
  }
}
