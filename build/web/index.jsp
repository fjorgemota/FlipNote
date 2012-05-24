<%@page import="dao.MateriaDAO"%>
<%@page import="modelo.Materia"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Loguin"/>
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

        <div class="row-fluid">
            <div class="span3">&nbsp;</div>
            <div class="span3">
                <p>E-mail: </p>
            </div>
            <div class="span3">
                <textarea rows="1" cols="50" ></textarea>
            </div>
            <div class="span3">&nbsp;</div>
        </div>



        <div class="row-fluid">
            <div class="span3">&nbsp;</div>

            <div class="span3">
                <p>Senha: </p>
            </div>
            <div class="span3">
                <textarea rows="1" cols="50" ></textarea>
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
                    Loguin
                </a>
            </div>
            
            <div class="span3">
                &nbsp;
            </div>
        </div>

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
                <a class="btn btn-success" href="cadastro.jsp" >
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
