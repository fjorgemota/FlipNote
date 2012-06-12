 <%@page import="util.Sessao"%>
<%@page import="modelo.AlunoAR"%>
<%@page import="dao.AlunoDAO"%>
<div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="pagina_inicial.jsp">FlipNote</a>
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li class="active"><a href="pagina_inicial.jsp">Inicio</a></li>
                            <li><a href="#minhaconta">Minha Conta</a></li>
                            <li><a href="acao/logout.jsp">Sair</a></li>
                        </ul>
                        <p class="navbar-text pull-right">Conectado como <a href="#minhaconta"><% 
                          AlunoAR aluno = Sessao.getAlunoLogado(request);
                          out.print(aluno.getPrimeiroNome()); 
                        %> </a></p>
                    </div>
                </div>
            </div>