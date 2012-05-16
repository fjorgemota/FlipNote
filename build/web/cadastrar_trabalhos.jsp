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
                    <h2>Cadastrar Trabalhos</h2>
                    <p> Use o formulario abaixo para cadastrar um trabalho.</p>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Nome da matéria do trabalho: </p>
                        </div>
                        <div class="span6">
                            <select > <option> Portugues</option>
                                <option> Matemática </option>
                            </select>
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Data de entrega: </p>
                        </div>
                        <div class="span6">
                            <input type ="text" id="datepicker" />

                        </div>

                    </div>
                    <div class="row-fluid">
                        <div class="span6">
                            <p>Notificação:</p>

                        </div>
                        <div class="span6">
                            <input type="radio" name="notification" >

                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Conteudo:  </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" ></textarea>
                        </div>



                    </div>




                </div>

            </div>
        </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
