function rgAspirante() {
    $("#mensaje").html("");
    var datos = "action=registra&" + $("#formaspirante").serialize();
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {
        $("#mensaje").prepend(data);
        $('#mensaje').show('slow');
        $('#mensaje').fadeOut(6000);   
    });
}

function delAspirante(id) { 
    if(confirm('¿Seguro que desea eliminar este usuario?')){
       $("#mensaje").html("");
    var datos = "action=elimina&id="+id ;
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {
        $("#mensaje").prepend(data);
        $('#mensaje').show('slow');
        $('#mensaje').fadeOut(6000);             
    }); 
    $("#detalles").load('consulta-aspirantes.php');
    } 
}

function updAspirante(){
    $("#mensaje").html("");
    var datos = "action=guarda&" + $("#formaspirantefinal").serialize();
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {
        $("#mensaje").prepend(data);
        $('#mensaje').show('slow');
        $('#mensaje').fadeOut(6000);      
    });
}

function modAspirante(id) {     
    $("#mensaje").html("");
    var datos = "action=actualiza&id="+id ;
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {        
        $('#detalles').html(data);        
    }); 
   
}

function mdformregistra() {
    var datos = "action=mdformularioregistra";
    $.post("../Controllers/mdformularioControl.php", datos, function(data) {
        $('#detalles').html(data);
    });
}

function mdformpregunta() {
    var datos = "action=mdformulariopregunta";
    $.post("../Controllers/mdformularioControl.php", datos, function(data) {
        $('#detalles').html(data);
    });
}
