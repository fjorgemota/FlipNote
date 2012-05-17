<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar Grupos"/>
    </jsp:include>
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
                    <h2>Cadastrar Grupo</h2>
                    <p> Use o formulario abaixo para cadastrar um grupo.</p>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Digite o nome do grupo: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="2" cols="80" ></textarea>
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Descrição do grupo: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" ></textarea>

                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Informe o e-mail do seu amigo: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" ></textarea>
                        </div>



                    </div>               

                    <jsp:include page="includes/botoes-form.jsp" />
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
