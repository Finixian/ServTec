function upArea(){
    $("#mensaje").html("");
    var datos = "action=guardaarea&" + $("#formarea").serialize();
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {
        $("#mensaje").prepend(data);
        $('#mensaje').show('slow');
        $('#mensaje').fadeOut(6000);      
    });
}

function modArea(id) {     
    $("#mensaje").html("");
    var datos = "action=traearea&id="+id ;
    $.post("../Controllers/aspiranteControl.php", datos, function(data) {        
        $('#detalles').html(data);        
    }); 
   
}