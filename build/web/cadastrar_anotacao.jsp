<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar anota��es"/>
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
                    <h2>Cadastrar Anota��o</h2>
                    <p><h4> Use o formulario abaixo para cadastrar uma anota��o.</h4></p>

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
                            <p>Anota��o </p>
                        </div>
                        <div class="span6">
                            <textarea rows="4" cols="80" ></textarea>
                        </div>
                    </div>
                     <jsp:include page="includes/notificacao.jsp" />
                    <jsp:include page="includes/botoes-form.jsp" />
                </div>

            </div>
        </div>
                     <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
