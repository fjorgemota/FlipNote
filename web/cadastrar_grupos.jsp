<%@page import="util.HTMLUtil"%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastrar Grupos"/>
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

                    <h2>Cadastrar Grupo</h2>
                    <p><h4>Use o formulario abaixo para criar um grupo.</h4> </p>

                   
                        <%=HTMLUtil.initFormCadastrar("grupos")%>

                        <div class="row-fluid">
                            <div class="span4">
                                <p>Digite o nome do grupo: </p>
                            </div>
                            <div class="span8">
                                <input type="text" name="nome" size="30" />
                            </div>
                        </div>



                        <div class="row-fluid">
                            <div class="span4">
                                <p>Descri��o do grupo: </p>
                            </div>
                            <div class="span8">
                                <input type="text" name="descricao" size="30" />
                            </div>
                        </div>


                        <jsp:include page="includes/botoes-form.jsp" />

                        <%=HTMLUtil.endForm()%>
                   
                </div>

            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
