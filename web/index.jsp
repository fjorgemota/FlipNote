<%-- 
    Document   : index
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : fernando_mota
--%>
<%@page import="util.Sessao"%>
<!DOCTYPE html>
<% 
Sessao.verificaSeEstaLogadoERedireciona(request, response);
%>
<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Login"/>
    </jsp:include>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="pagina_inicial.jsp">FlipNote</a>
                </div>
            </div>
        </div>



        <div class="row-fluid"> 
            <div class="span3">&nbsp;</div>

            <div class="span8">
                <h1>Conecte-se</h1>
            </div>
            <div class="span3">&nbsp;</div>
        </div>
        <form action="acao/login.jsp" method="POST">
        <div class="row-fluid">
            <div class="span3">&nbsp;</div>
            <div class="span3">
                <p>E-mail: </p>
            </div>
            <div class="span3">
                <input type="text" name="email" size="50" />
            </div>
            <div class="span3">&nbsp;</div>
        </div>



        <div class="row-fluid">
            <div class="span3">&nbsp;</div>

            <div class="span3">
                <p>Senha: </p>
            </div>
            <div class="span3">
                <input type="password" name="senha" size="50" />
            </div>
            <div class="span3">&nbsp;</div>

        </div>

        <div class="row-fluid">
            <div class="span3">
                &nbsp;
            </div>
            <div class="span3">
                &nbsp;
            </div>
            <div class="span3" >
                <a class="btn btn-success" >
                    Login
                </a>
            </div>
            
            <div class="span3">
                &nbsp;
            </div>
        </div>
        </form>
        <div class="row-fluid">&nbsp;</div>
        <div class="row-fluid">&nbsp;</div>


        <div class="row-fluid">
            <div class="span3">&nbsp;</div>

            <div class="span6">
                <h1>Não possui cadastro?</h1>
                <h3> Não perca tempo !!</h3>
            </div>
            <div class="span3" >
               &nbsp;
            </div>
        </div>

        <div class="row-fluid">&nbsp;</div>
        
        <div class="row-fluid">
            <div class="span3">&nbsp;</div>

           
            <div class="span6" >
                <a class="btn btn-success" href="cadastrar_usuario.jsp" >
                    Cadastre-se aqui!
                </a>
            </div>
             <div class="span3">
                &nbsp;
            </div>
        </div>


        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
