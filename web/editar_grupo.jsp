<%-- 
    Document   : editar_grupo
    Created on : Jun 19, 2012, 4:58:26 PM
    Author     : HP
--%>

<%@page import="modelo.GrupoAR"%>
<%@page import="util.Sessao"%>
<%@page import="util.HTMLUtil"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    GrupoAR grupo = new GrupoAR();
    grupo.setID(Integer.parseInt(request.getParameter("id")));
    if (!grupo.load()) {
        response.sendRedirect("grupos_listar.jsp?situacao=carregamento_erro");
    }
%>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Editar Grupos"/>
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

                    <h2>Editar Grupo</h2>
                    <p><h4>Use o formulario abaixo para editar um grupo.</h4> </p>



                    <%=HTMLUtil.initFormEditar("grupo")%>
                    <input type="hidden" name="id" value="<%=grupo.getID()%>" />
                    <div class="row-fluid">
                        <div class="span4">
                            <p>Digite o nome do grupo: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="nome" size="30" value="<%=grupo.getNome()%>" />
                        </div>
                    </div>



                    <div class="row-fluid">
                        <div class="span4">
                            <p>Descrição do grupo: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="descricao" size="30"  value="<%=grupo.getDescricao()%>"/>
                        </div>
                    </div>


                    <jsp:include page="includes/botoes-form.jsp" >
                        <jsp:param name="botaoEnviar" value="Editar" />
                    </jsp:include>


                    <%=HTMLUtil.endForm()%>
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
