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

                    <form class="form-horizontal well" action="acao/cadastrar_grupos.jsp" method="POST">
                        <fieldset>

                            <div class="control-group">

                                <label class="control-label" for="nome">
                                    Digite o nome do grupo:
                                </label>

                                <div class="controls">
                                    <input type="textarea" class="input-xlarge" id="nome" name="nome">
                                </div>

                            </div>

                            <div class="control-group">

                                <label class="control-label" for="nome">
                                    Descrição do grupo:
                                </label>

                                <div class="controls">
                                    <input type="textarea" class="input-xlarge" id="descricao" name="descricao">
                                </div>


                            </div>

                            <div class="control-group">
                                <label class="control-label" for="nome">
                                    Informe o e-mail do seu amigo:
                                </label>

                                <div class="controls">
                                    <input type="text" class="input-xlarge" id="resumo" name="resumo">
                                </div>

                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-primary">Cadastrar</button>
                            </div>

                     
                    </form>
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
