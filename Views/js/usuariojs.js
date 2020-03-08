        
function login() {
  var folio = $("#itFolio").val();
  var password = $("#itPassword").val();

  if (folio == "") {
    $("#campo1").addClass("has-error");
    $("#mensaje1").fadeIn();
    return false;
  }else {
    $("#campo1").removeClass("has-error");
    $("#mensaje1").fadeOut();
    if (password == "") {
      $("#campo2").addClass("has-error");
      $("#mensaje2").fadeIn();
      return false;
    }else {
      $("#campo2").removeClass("has-error");
      $("#mensaje2").fadeOut();
      $("#mensaje").html("");
    var datos = "action=login&" + $("#formusuario").serialize();
    $.post("../Controllers/usuarioControl.php", datos, function(data) {        
        $("#mensaje").prepend(data);
        $('#mensaje').show('slow');
        $('#mensaje').fadeOut(6000);
    });
    }
  }        
}

function rgAspirante() {
  var nombre =$("#nombre").val();
  var apaterno = $("#apaterno").val();
  var amaterno = $("#amaterno").val();
  var correo = $("#correo").val();
  var usuario = $("#usuario").val();
  var clave = $("#clave").val();  
  var fnacimiento = $("#fnacimiento").val(); 
  //
  var rx_correo = new RegExp("^[A-Za-z]+\.[A-Za-z]+[0-9]{2}(@tectijuana.edu.mx)$");
  var rx_nocontrol = new RegExp("[0-9]{8}");

  if (nombre == null || nombre.length == 0) {
    $("#camponombre").addClass("has-error");
    alert("Por favor ingresa tu 'Nombre'.")
    return false;
  }else{
    $("#camponombre").removeClass("has-error");    
  }
  
  if (apaterno == null || apaterno.length == 0) {
    $("#campoapaterno").addClass("has-error");
    alert("Por favor ingresa tu 'Apellido Paterno'.");
    return false;
  }
  else{
    $("#campoapaterno").removeClass("has-error");
  }
  
  if (amaterno == null || amaterno.length == 0) {
    $("#campoamaterno").addClass("has-error");
    alert("Por favor ingresa tu 'Apellido Materno'.");
    return false;
  }else{
    $("#campoamaterno").removeClass("has-error");
  }
  
  if (!Date.parse(fnacimiento)) {
    $("#fnacimiento").addClass("has-error");
    alert("Por favor ingresa tu 'Fecha de Nacimiento'.")
    return false;
  }else{
    $("#fnacimiento").removeClass("has-error");    
  }
  
  //
  if (correo == null || correo.length == 0 || !correo.match(rx_correo)){
    $("#campocorreo").addClass("has-error");
    alert("Por favor ingresa un 'Correo Institucional' válido. \nEjemplo: nombre.apellido19@tectijuana.edu.mx");
    return false;
  }else{
    $("#campocorreo").removeClass("has-error");
  }
       
  if (usuario == null || usuario.length == 0 || !usuario.match(rx_nocontrol)) {
    $("#campousuario").addClass("has-error");
    alert("Por favor ingresa tu 'Número de Control'.\nEste debe contener 8 números para ser válido.");
    return false;
  }else{
    $("#campousuario").removeClass("has-error");
  }
  
  if (clave == null || clave.length == 0) {
    $("#campoclave").addClass("has-error");
    alert("Por favor ingresa tu 'Clave de Acceso'.");
    return false;
  }
  else{
    $("#campoclave").removeClass("has-error");    
  }
    $("#notificacion").html("");
    var datos = "action=registra&" + $("#formaspirante").serialize();
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {
        $('#notificacion').html(data);    
    });
    //$('#formaspirante')[0].reset();

}

function mdformlogin() {
    var datos = "action=mdformulariologin";
    $.post("../Controllers/mdformularioControl.php", datos, function(data) {
        $('#principal').html(data);
    });
}
