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
                    <h2>Cadastrar Anotação</h2>
                    <p> Use o formulario abaixo para cadastrar uma anotação.</p>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Titulo: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="1" cols="80" ></textarea>
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Deseja ser avisado sobre esta anotação: </p>
                        </div>
                        <div class="span6">
                            <input type ="text" id="datepicker" />

                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Anotação </p>
                        </div>
                        <div class="span6">
                            <textarea rows="4" cols="80" ></textarea>
                        </div>



                    </div>

                </div>

            </div>
        </div>
                     <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
