<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar matérias"/>
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
                        <div class="span12">
                            <h1>Lista de Matérias</h1>
                        </div>
                    </div>
                    <div class="row-fluid" id="rowtitle">
                        <div class="span4">
                            Nome
                        </div>
                        <div class="span4">
                            Professor
                        </div>
                        <div class="span4">
                            Ações
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            Programação Orientada à Objetos 2
                        </div>
                        <div class="span4">
                            Kaléu Caminha
                        </div>
                        <div class="span4">
                            <div class="row-fluid">
                                <div class="span4" style="text-align: right;">
                                    <a class="btn btn-success" >
                                        Editar
                                    </a>
                                </div>
                                <div class="span4">
                                    <a class="btn btn-danger" >
                                        Apagar
                                    </a>
                                </div>
                                <div class="span4">
                                    &nbsp;
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            Projetos de Software II
                        </div>
                        <div class="span4">
                            Maiquel
                        </div>
                        <div class="span4">
                            <div class="row-fluid">
                                <div class="span4" style="text-align: right;">
                                    <a class="btn btn-success" >
                                        Editar
                                    </a>
                                </div>
                                <div class="span4">
                                    <a class="btn btn-danger" >
                                        Apagar
                                    </a>
                                </div>
                                <div class="span4">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/span-->

            </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
