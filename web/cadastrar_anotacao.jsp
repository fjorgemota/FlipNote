<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar anotações"/>
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
                    <h2>Cadastrar Anotação</h2>

                    <p><h4> Use o formulario abaixo para cadastrar uma anotação.</h4></p>

                    <form action="acao/cadastrar_anotacao.jsp" method="POST">
                        <div class="row-fluid">
                            <div class="span6">
                                <p>Titulo: </p>
                            </div>
                            <div class="span6">
                                <input type="text" name="titulo" size="30" /> 
                            </div>

                        </div>

                        <div class="row-fluid">
                            <div class="span6">
                                <p>Anotação </p>
                            </div>
                            <div class="span6">
                                <input type="text" name="texto" size="30" />  
                            </div>
                        </div>
                        
                        
                        <jsp:include page="includes/notificacao.jsp" />     
                        <jsp:include page="includes/botoes-form.jsp">
                            <jsp:param name="botaoEnviar" value="Cadastrar" />
                        </jsp:include>
                    </form>
                </div>

            </div>

        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
