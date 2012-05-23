<%-- 
    Document   : Cadastro
    Created on : May 23, 2012, 4:32:38 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Cadastro"/>
    </jsp:include>
    <body >
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">FlipNote</a>
                </div>
            </div>
        </div>



        <div class="row-fluid">
            <div class="span3">&nbsp;</div>

            <div class="span8">
                <h1>Cadastro</h1>
            </div>
            <div class="span3">&nbsp;</div>
        </div>

        <div class="row-fluid">
            <div class="span3">&nbsp;</div>
            <div class="span3">
                <p>Nome: </p>
            </div>
            <div class="span3">
                <textarea rows="1" cols="50" ></textarea>
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
            <div class="span3" style="text-align: right;">
                <a class="btn btn-success" >
                    Cadastrar
                </a>
            </div>
            <div class="span3">
                <a class="btn btn-danger" >
                    Limpar
                </a>
            </div>
            <div class="span3">
                &nbsp;
            </div>
        </div>


    </body>
</html>
