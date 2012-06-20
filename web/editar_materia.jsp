<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="util.HTMLUtil"%>
<%
Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
MateriaAR materia = new MateriaAR();
materia.setID(Integer.parseInt(request.getParameter("id")));
if(!materia.load()){
   response.sendRedirect("materias_listar.jsp?situacao=carregamento_erro");
}
%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar Matérias"/>
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
                    <h2>Editar Matéria</h2>
                    <p><h4> Use o formulario abaixo para editar uma matéria.</h4></p>
                    
                <%=HTMLUtil.initFormEditar("materia")%>
                <input type="hidden" name="id" value="<%=materia.getID()%>" />
                    <div class="row-fluid">
                        <div class="span4">
                            <p>Digite o nome da matéria a ser cadastrada: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="nome" size="30" value="<%=materia.getNome()%>"/>
                        </div>

                    </div>

                    <div class="row-fluid">
                        <div class="span4">
                            <p>Digite o nome do professor da matéria: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="professor" size="30" value="<%=materia.getProfessor()%>" />
                        </div>
                    </div>
                    <jsp:include page="includes/botoes-form.jsp">
                        <jsp:param name="botaoEnviar" value="Editar" />
                    </jsp:include>

                    <%=HTMLUtil.endForm()%>
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
