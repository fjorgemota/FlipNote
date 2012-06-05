<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar Mat�rias"/>
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
                    <h2>Cadastrar Mat�ria</h2>
                    <p> Use o formulario abaixo para cadastrar uma mat�ria.</p>
                    <form action="acao/cadastrar_materia.jsp" method="POST">
                    <div class="row-fluid">
                        <div class="span4">
                            <p>Digite o nome da mat�ria a ser cadastrada: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="nome" size="30" />
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span4">
                            <p>Digite o nome do professor da mat�ria: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="professor" size="30" />
                        </div>
                    </div>
                    <jsp:include page="includes/botoes-form.jsp" />

                    </form>
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
