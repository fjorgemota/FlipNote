<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar Grupos"/>
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
                <div class="span9" id="tablerow">
                    <div class="row-fluid">
                        <div class="span4" >
                            Nome do grupo
                        </div>
                        <div class="span4">
                            Descrição do grupo
                        </div>
                        <div class="span4">
                            Participantes
                        </div>

                    </div> 
                    <div class="row-fluid">
                        <div class="span12">
                            Programaçõ orientada a objetos
                        </div>
                    </div>
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
