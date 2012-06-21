<%-- 
    Document   : minhaconta
    Created on : Jun 21, 2012, 3:56:22 PM
    Author     : HP
--%>
<%@page import="util.HTMLUtil"%>
<%@page import="modelo.AlunoAR"%>
<%@page import="util.Sessao"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);

%>
<!DOCTYPE html>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Minha conta"/>
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
                    <%=HTMLUtil.initFormEditar("minhaconta")%>
                    <div class="hero-unit">
                        <h1>Bem vindo, <%
                            AlunoAR aluno = Sessao.getAlunoLogado(request);
                            out.print(aluno.getPrimeiroNome());
                            %></h1>
                        <p>Aqui voce pode alterar todos os dados da sua conta. </p>

                    </div>


                    <input type="hidden" name="id" value="<%=aluno.getID()%>" />
                    <div class="row-fluid">
                        <div class="span4">
                            <p>Nome da sua conta: </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="nome" size="30" value="<%=aluno.getNomeCompleto()%>" />
                        </div>
                    </div>



                    <div class="row-fluid">
                        <div class="span4">
                            <p>Seu e-mail </p>
                        </div>
                        <div class="span8">
                            <input type="text" name="email" size="30"  value="<%=aluno.getEmail()%>"/>
                        </div>
                    </div>

                    <div class="row-fluid">
                        <div class="span4">
                            <p>Sua senha:  </p>
                        </div>
                        <div class="span8">
                            <%--       <input type="text" name="senha" size="30"  value="<%=aluno.getSenha()%>"/>    --%>
                        </div>
                    </div>

                    <jsp:include page="includes/botoes-form.jsp" >
                        <jsp:param name="botaoEnviar" value="Editar" />
                    </jsp:include>

                    <%=HTMLUtil.endForm()%>
                </div>
            </div>
        </div>
    </body>
</html>
