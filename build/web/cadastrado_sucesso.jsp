<%-- 
    Document   : cadastrado_sucesso
    Created on : Jun 5, 2012, 4:36:04 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrado com sucesso"/>
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
                <div class ="span9">
                    <h1>Registro cadastrado com sucesso.</h1>
                    <p>
                        O registro foi salvo com segurança no banco de dados.
                    </p>
                    <p>
                        <a href="<% out.print(request.getParameter("link"));%>" class="btn btn-success">Deseja adicionar outro registro?</a>
                        <a href="pagina_inicial.jsp" class="btn btn-warning">Página Inicial</a>
                    </p>
                </div>


            </div>
        </div>
    </body>
</html>
