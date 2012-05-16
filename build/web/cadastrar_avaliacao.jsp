<!DOCTYPE html>
<html>
  <jsp:include page="includes/head.jsp"/>
    <body>
        <div class="navbar navbar-fixed-top">
            <jsp:include page="includes/navbar.jsp"/>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
              <div class="span3">
                     <jsp:include page="includes/menu.jsp"/>
                </div>
                <div class="span9">
                    <h2>Cadastrar avaliação</h2>
                    <p> Use o formulario abaixo para cadastrar uma avaliação no sistema.</p>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Matéria: </p>
                        </div>
                        <div class="span6">
                            <select > <option> Portugues</option>
                                <option> Matemática </option>
                            </select>
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Data da avaliação: </p>
                        </div>
                        <div class="span6">
                            <input type ="text" id="datepicker" />

                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Descrição: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" ></textarea>
                        </div>



                    </div>
                    <div class="row-fluid">
                        <div class="span6">
                            <p>Notificações:</p>

                        </div>
                        <div class="span6">
                              <input type="radio" name="notification" id="nyes" checked="checked"/><label for="nyes">Sim</label><input type="radio" name="notification" id="nnot" checked="checked"/><label for="nnot">Não</label>                        
                            <br />
                            <div id="ncalendar" style="float:left;">
                            </div>
                        </div>

                    </div>
                    <div class="row-fluid">
                        <div class="span4" style="text-align: right;">
                            <a class="btn btn-success" >
                                    Cadastrar
                            </a>
                        </div>
                        <div class="span4">
                            <a class="btn btn-danger" >
                                    Limpar
                            </a>

                        </div>
                        <div class="span4">
                            &nbsp;
                        </div>
                    </div>



                </div>

            </div>
        </div>
       
      <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
