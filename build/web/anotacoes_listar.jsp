<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar anota��es"/>
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
                    <div class="row-fluid">
                        <div class="span4">
                            N�o possuem anota��es cadastradas at� o momento.
                        </div>
                    </div>
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
