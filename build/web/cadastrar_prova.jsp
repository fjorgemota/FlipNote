<%@page import="util.Sessao"%>
<%@page import="util.HTMLUtil"%>
<!DOCTYPE html>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
%>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar avalia��es"/>
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

                <%=HTMLUtil.initFormCadastrar("prova")%>
                <div class="span9">
                    <h2>Cadastrar avalia��o</h2>
                    <p> <h4>Use o formulario abaixo para cadastrar uma avalia��o no sistema.</h4></p>

                    <jsp:include page="includes/materia.jsp" />

                    <jsp:include page="includes/data.jsp" />

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Descri��o: </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" name="descricao"></textarea>
                        </div>



                    </div>
                    <jsp:include page="includes/notificacao.jsp" />
                    <jsp:include page="includes/botoes-form.jsp">
                        <jsp:param name="botaoEnviar" value="Cadastrar" />
                    </jsp:include>


                </div>
                <%=HTMLUtil.endForm()%>

            </div>
        </div>

        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
