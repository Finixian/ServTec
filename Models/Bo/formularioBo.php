<?php
namespace Model\Bo;

use View\VistaUsuario as VistaUsuario;

class FormularioBo {

    private $vista;

    function __construct() {
        $this->vista = new VistaUsuario();
    }

    function getFormularioRegistraBo($r) {
    	return $this->vista->getFormularioRegistra($r);
    }

    function getFormularioLoginBo($r) {
    	return $this->vista->getFormularioLogin($r);    
    }   
    
    function getFormularioPregunta($r){
      return $this->vista->getFormularioPregunta($r);  
    }

}

?>
