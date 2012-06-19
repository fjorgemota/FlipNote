<%@page import="util.Sessao"%>
<%@page import="com.oracle.net.Sdp"%>
<%
Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
%>
<!DOCTYPE html>
<html>
  <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar Trabalhos"/>
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
                    <h2>Cadastrar Trabalhos</h2>
                    <p><h4> Use o formulario abaixo para cadastrar um trabalho.</h4></p>

                    <jsp:include page="includes/materia.jsp" />

                    <jsp:include page="includes/data.jsp" />
                    
                    <div class="row-fluid">
                        <div class="span6">
                            <p>Conteudo:  </p>
                        </div>
                        <div class="span6">
                            <textarea rows="3" cols="80" ></textarea>
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
