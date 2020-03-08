<?php
namespace View;

class Vistalogica {

  function getFormularioRegistra($datos) {
    $cad =  ' 
    <div class="container">
      <form id="formaspirante">
        <fieldset>
          <legend>Registro de Aspirantes</legend>
      <div class="form-group">
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Nombre(s)</label>
            <input type="text" class="form-control" id="inputDefault" name="nombre">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Apellido Paterno</label>
            <input type="text" class="form-control" id="inputDefault" name="apaterno">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Apellido Materno</label>
            <input type="text" class="form-control" id="inputDefault" name="amaterno">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Fecha de Nacimiento</label>
            <input type="date" class="form-control" id="inputDefault" name="fnacimiento">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Correo Institucional</label>
            <input type="text" class="form-control" id="inputDefault" name="correo" placeholder="ej: correo@tectijuana.edu.mx">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Número de Control</label>
            <input type="text" class="form-control" id="inputDefault" name="folio" placeholder="ej: 16211957" maxlength="8">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Clave de Acceso</label>
            <input type="text" class="form-control" id="inputDefault" name="clave">
          </div>
        </div>
        <div class="col-lg-4">
          <div class="form-group">
            <label class="control-label" for="inputDefault">Tipo de Usuario</label>
            <select class="form-control" id="select" name="tipo">
                <option selected></option>
                <option value="1">Aspirante</option>
                <option value="0">Administrador</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12 ">
            <button type="button" class="btn btn-primary btn-block" onclick="rgAspirante()">Registrar</button>
          </div>
        </div>
      </div>
    </fieldset>
  </form>
    </div>';
    return $cad;
  }

  function getFormularioLogin($datos) {
    $cad = '<form class="form-signin" id="formusuario">
    <h3 class="text-center">ServTec</h3>
    <div class="errores" id="mensaje1">
        <p class="text-danger">Introduce tu Número de Control.</p>
    </div>
    <div class="input-group" id="campo1">
        <span class="input-group-addon"><i class="fa fa-user fa-2x" aria-hidden="true"></i></span>
        <input type="text" name="usu" id="itFolio" class="form-control btn-block" maxlength="8" placeholder="Número de Control" autofocus />
    </div>
    <br>
    <div class="errores" id="mensaje2">
        <p class="text-danger">Introduce tu Contraseña.</p>
    </div>
    <div class="input-group" id="campo2">
        <span class="input-group-addon"><i class="fa fa-key fa-2x" aria-hidden="true"></i></span>
        <input type="password" name="pwd" id="itPassword" class="form-control btn-block" placeholder="Contraseña" />
    </div>
    <br>
    <button type="button" class="btn btn-danger btn-block" id="enviar" onclick="login()">Iniciar Sesión</button>
    <br>
    <p class="text-right">¿Aún no estás registrado? <a href="#" onclick="mdformregistra()">Crear Cuenta</a></p>
</form>';
    return $cad;
  }
  
  function getFormularioPregunta($datos){
       $cad =  '
           <div class="container">
            <form id="formpregunta">
                <fieldset>
                    <legend>Registro de preguntas</legend>
                    <div class="form-group">
                    <div class="col-lg-8">
                      <div class="form-group">
                          <label for="txtPregunta" class="control-label">Pregunta</label>
                          <textarea class="form-control" rows="6" id="txtpregunta" name="txt" maxlength="1000"></textarea>
                      </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-group">
                          <label class="control-label">Área</label>
                          <div class="col-lg-12">
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="1" />
                                Área 1 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="2" />
                                Área 2 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="3" />
                                Área 3 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="4" />
                                Área 4 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="5" />
                                Área 5 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="6" />
                                Área 6 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="7" />
                                Área 7 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="8" />
                                Área 8 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="9" />
                                Área 9 
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="ida" type="radio" value="10" />
                                Área 10 
                            </label>
                          </div>
                          </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="textArea" class="control-label">Respuesta inciso A</label>
                            <textarea class="form-control" rows="3" id="textArea" name="r1" maxlength="500"></textarea>
                            <span class="help-block"><p class="text-info">Escribe la primer posible respuesta.</p></span>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="textArea" class="control-label">Respuesta inciso B</label>
                            <textarea class="form-control" rows="3" id="textArea" name="r2" maxlength="500"></textarea>
                            <span class="help-block"><p class="text-info">Escribe la segunda posible respuesta.</p></span>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="textArea" class="control-label">Respuesta inciso C</label>
                            <textarea class="form-control" rows="3" id="textArea" name="r3" maxlength="500"></textarea>
                            <span class="help-block"><p class="text-info">Escribe la tercer posible respuesta.</p></span>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="textArea" class="control-label">Respuesta inciso D</label>
                            <textarea class="form-control" rows="3" id="textArea" name="r4" maxlength="500"></textarea>
                            <span class="help-block"><p class="text-info">Escribe la cuarta posible respuesta.<p/></span>
                        </div>
                    </div>
                    <div class="col-lg-12">
                      <h3 class="text-info">Selecciona cual va ser la respuesta correcta, solo una debe ser la correcta.</h3>
                    </div>
                    <div class="col-lg-2 col-lg-offset-1">
                        <div class="form-group">
                          <label class="control-label">Valor del inciso A</label>

                          <div class="radio">
                            <label>
                              <input name="val1" type="radio" value="1" />
                              Correcta
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="val1" type="radio" value="0" checked/>
                              Incorrecta
                            </label>
                          </div>

                        </div>
                    </div>
                    <div class="col-lg-3 col-lg-offset-1">
                        <div class="form-group">
                          <label class="control-label">Valor del inciso B</label>

                          <div class="radio">
                            <label>
                              <input name="val2" type="radio" value="1" />
                              Correcta
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="val2" type="radio" value="0" checked/>
                              Incorrecta
                            </label>
                          </div>

                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">
                          <label class="control-label">Valor del inciso C</label>

                          <div class="radio">
                            <label>
                              <input name="val3" type="radio" value="1" />
                              Correcta
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="val3" type="radio" value="0" checked/>
                              Incorrecta
                            </label>
                          </div>

                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-group">
                          <label class="control-label">Valor del inciso D</label>

                          <div class="radio">
                            <label>
                              <input name="val4" type="radio" value="1" />
                              Correcta
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input name="val4" type="radio" value="0" checked/>
                              Incorrecta
                            </label>
                          </div>

                        </div>
                    </div>
                    <div class="col-lg-12">
                      <div class="form-group">
                        <button type="button" class="btn btn-primary btn-block" onclick="rgPregunta()">Registrar</button>
                      </div>
                    </div>

                    </div>
                </fieldset>
            </form>
        </div>';
       return $cad;
  }

  function vistaActualizar($datos){
    $cad='<div class="container">
        <form id="formaspirantefinal">
    <fieldset>
      <legend>Actualizar Datos del Usuario</legend>
  <div class="form-group">
    <div class="col-lg-4">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Nombre(s)</label>
        <input type="text" class="form-control" id="inputDefault" name="nombre" value='.$datos->nombre.'>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Apellido Paterno</label>
        <input type="text" class="form-control" id="inputDefault" name="apaterno" value='.$datos->apaterno.'>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Apellido Materno</label>
        <input type="text" class="form-control" id="inputDefault" name="amaterno" value='.$datos->amaterno.'>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Fecha de Nacimiento</label>
        <input type="date" class="form-control" id="inputDefault" name="fnacimiento" value='.$datos->fnacimiento.'>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Correo Institucional</label>
        <input type="text" class="form-control" id="inputDefault" name="correo" placeholder="ej: correo@tectijuana.edu.mx" value='.$datos->correo.'>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Número de Control</label>
        <input type="text" class="form-control" id="inputDefault" name="folio" placeholder="ej: 16211957" maxlength="8" value='.$datos->folio.'>
      </div>
    </div>
    <div class="col-lg-3">
      <div class="form-group">
        <label class="control-label" for="inputDefault">Clave de Acceso</label>
        <input type="text" class="form-control" id="inputDefault" name="clave" value='.$datos->clave.'>
      </div>
    </div>
    <div class="form-group">
      <div class="col-md-12">
        <input type="text" hidden name="id" value='.$datos->id.'> 
        <button type="button" class="btn btn-success btn-block" onclick="updAspirante()">Guardar Cambios</button>
      </div>
    </div>
  </div>
</fieldset>
</form>
</div>';
    return $cad;
}
}
