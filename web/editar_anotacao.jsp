<%@page import="modelo.AnotacaoAR"%>
<%@page import="util.Sessao"%>
<%@page import="util.HTMLUtil"%>
<!DOCTYPE html>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    AnotacaoAR anotacao = new AnotacaoAR();
    anotacao.setID(Integer.parseInt(request.getParameter("id")));
    if (!anotacao.load()) {
        response.sendRedirect("anotacao_listar.jsp?situacao=carregamento_erro");
    }
%>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Editar anotações"/>
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

                    <p><h4> Use o formulario abaixo para editar uma anotação.</h4></p>

                    <%=HTMLUtil.initFormEditar("anotacao")%>
                    <input type="hidden" name="id" value="<%=anotacao.getID()%>" />
                    <div class="row-fluid">
                        <div class="span6">
                            <p>Titulo: </p>
                        </div>
                        <div class="span6">
                            <input type="text" name="titulo" size="30" value="<%=anotacao.getTitulo()%>" /> 
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <p>Anotação </p>
                        </div>
                        <div class="span6">
                            <input type="text" name="texto" size="30" value="<%=anotacao.getTexto()%>" />  
                        </div>


                        <jsp:include page="includes/notificacao.jsp" />     
                        <jsp:include page="includes/botoes-form.jsp">
                            <jsp:param name="botaoEnviar" value="Editar" />
                        </jsp:include>
                    </div>
                    <% HTMLUtil.endForm();%>
                </div>

            </div>

        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
