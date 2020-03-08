<?php
namespace Model\Dao\Usuario;

use Model\Dao\Conexion as Conexion;
use Model\Dao\Filter as Filter;
use Model\Dao\Usuario\UsuarioSql as UsuarioSQL;

class UsuarioDao {
    private $con, $mensaje;

    function __construct() {
        $this->con=  conexion::conectar();
    }
    function __destruct() {
        $this->con->close();
    }

    function  identificarUsuario($usuario)
    {
        $datosArray=array($usuario->usuario,$usuario->password);
        if( $usuario->usuario == '' || $usuario->password == ''){
           $mensaje='<div class="alert alert-dismissible alert-danger">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <h4>Error!</h4>
          <p>El usuario y la contraseña no pueden estar vacios, intentalo de nuevo.</p>
          </div>';
        return $mensaje;
        }else{
            $st=  Filter::PrepareStatement(usuarioSql::indentificarUsuario(),$datosArray);

        $query=$this->con->query($st);
        if($query->num_rows==0){
            $mensaje='<div class="alert alert-dismissible alert-warning">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <h4>Error!</h4>
          <p>Usuario y/o clave incorrectos, intentalo de nuevo.</p>
          </div>';
        return $mensaje;
        }
            $row = mysqli_fetch_array($query);        
            if ($row['status'] == 1 || $row['status'] == 0) {
                   session_start();
                   // creamos la variable de sesion y le asignamos el valor de la fila
                   $_SESSION['idaspirante'] = $row['idAspirante']; 
                   $_SESSION['nombre'] = $row['nombre']; 
                   $_SESSION['status'] = $row['status']; 
                   // redirecionamos al usuario dependiendo de su status
                    if ($_SESSION['status'] == 1) {                        
                        print "<script>window.location='panel-aspirante.php';</script>";
                    }else if ($_SESSION['status'] == 0) {                        
                        print "<script>window.location='panel-administracion.php';</script>";
                    }
            }else { 
              $mensaje="La cuenta de usuario est&acirc; inhabilitada";
              return $mensaje;
            }            
        }       
    }

    function  registrarUsuarioDao($usuario)
    {
        $datosArray=array($usuario->usuario,$usuario->password);

        $st=  Filter::PrepareStatement(usuarioSql::registrarUsuario(),$datosArray);

        $query=$this->con->query($st);
        if($query!=false){
          $mensaje="Usuario registrado correctamente";          
          return $mensaje;
        }
            $mensaje="Ocurrio un error intentalo de nuevo";            
            return $mensaje;
    }
}
