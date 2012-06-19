<<<<<<< HEAD
<%@page import="util.Sessao"%>
<%@page import="dao.AlunoDAO"%>
<%@page import="modelo.AlunoAR"%>
<%@page import="util.Data"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="dao.MateriaDAO"%>
<%@page import="java.util.ArrayList"%>
<%
Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
%>
<!DOCTYPE html>
<html>
   <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Página inicial"/>
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
                    <div class="hero-unit">
                        <h1>Bem vindo, <% 
                            AlunoAR aluno = Sessao.getAlunoLogado(request);
                            out.print(aluno.getPrimeiroNome());
                            %></h1>
                        <p>Parece que voce vai ter uma semana corrida,Fernando, Portanto, </p>
                        <p>Boa sorte. :)</p>
                        <p><a class="btn btn-primary btn-large">Veja porquê. &raquo;</a></p>
                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <h2>Avaliações por Matéria</h2>

                            <script type="text/javascript" src="http://extra.amcharts.com/public/swfobject.js"></script>
                            <div id="amcharts_1336583874998">You need to upgrade your Flash Player</div>
                            <script type="text/javascript">
                                var so = new SWFObject("http://extra.amcharts.com/public/ampie.swf", "ampie", "100%", "100%", "8", "#FFFFFF");
                                so.addVariable("path", "ampie/");
                                so.addVariable("chart_settings", encodeURIComponent("<settings><redraw>1</redraw><background><alpha>100</alpha><border_alpha>20</border_alpha></background><legend><enabled>0</enabled><align>center</align></legend><pie><y>50%</y></pie><data_labels><show>{title}: {value}</show><max_width>140</max_width></data_labels></settings>"));
                                so.addVariable("chart_data", encodeURIComponent("<pie><%
                                                                ArrayList<MateriaAR> atividades = MateriaDAO.getMaterias();
                                                                for(MateriaAR materia: atividades){
                                                                    out.print("<slice title='"+materia.getNome()+"'>"+materia.getAtividadesPeriodo(Data.getDate(), Data.getDate(86400*30)) +"</slice>");
                                                                }
                                                                                                                               %></pie>"));
                                so.write("amcharts_1336583874998");
                            </script>



                        </div><!--/span-->
                        <div class="span6">
                            <h2>Dias com atividades</h2>
                            <p id="calendar"></p>
                        </div><!--/span-->

                    </div><!--/row-->
                    <div class="row-fluid">
                        <div class="span6">
                            <h2>Tarefas</h2>
                            <ul class="unstyled">
                                <li><a href="cadastrar_avaliacao.jsp">Cadastrar avaliações</a></li>
                                <li><a href="cadastrar_trabalhos.jsp">Cadastrar Trabalho</a></li>
                                <li><a href="cadastrar_anotacao.jsp">Cadastrar Anotações</a></li>
                                <li><a href="cadastrar_materia.jsp">Cadastrar Matéria</a></li>
                            </ul>
                        </div><!--/span-->
                        <div class="span6">
                            <h2>Atividades recentes</h2>
                            <p>Histórico de atividades, exemplo Najuan cadastrou um trabalho em Programaação Orientada a Objetos - Há¡ 20 minutos. </p>
                            <p>Kamila,Convidou voce a participar do grupo "Técnico" - Ontem . </p>

                        </div><!--/span-->

                    </div><!--/row-->
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
=======
<%@page import="util.Sessao"%>
<%@page import="dao.AlunoDAO"%>
<%@page import="modelo.AlunoAR"%>
<%@page import="util.Data"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="dao.MateriaDAO"%>
<%@page import="java.util.ArrayList"%>
<%
Sessao.verificaLoginERedireciona(request, response);
%>
<!DOCTYPE html>
<html>
   <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Página inicial"/>
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
                    <div class="hero-unit">
                        <h1>Bem vindo, <% 
                            AlunoAR aluno = Sessao.getAlunoLogado(request);
                            out.print(aluno.getPrimeiroNome());
                            %></h1>
                        <p>Parece que voce vai ter uma semana corrida,<% 
                             out.print(aluno.getPrimeiroNome());
                            %>, Portanto, </p>
                        <p>Boa sorte. :)</p>
                        <p><a class="btn btn-primary btn-large">Veja porquê. &raquo;</a></p>
                    </div>

                    <div class="row-fluid">
                        <div class="span6">
                            <h2>Avaliações por Matéria</h2>

                            <script type="text/javascript" src="http://extra.amcharts.com/public/swfobject.js"></script>
                            <div id="amcharts_1336583874998">You need to upgrade your Flash Player</div>
                            <script type="text/javascript">
                                var so = new SWFObject("http://extra.amcharts.com/public/ampie.swf", "ampie", "100%", "100%", "8", "#FFFFFF");
                                so.addVariable("path", "ampie/");
                                so.addVariable("chart_settings", encodeURIComponent("<settings><redraw>1</redraw><background><alpha>100</alpha><border_alpha>20</border_alpha></background><legend><enabled>0</enabled><align>center</align></legend><pie><y>50%</y></pie><data_labels><show>{title}: {value}</show><max_width>140</max_width></data_labels></settings>"));
                                so.addVariable("chart_data", encodeURIComponent("<pie><%
                                                                ArrayList<MateriaAR> atividades = MateriaDAO.getMaterias();
                                                                for(MateriaAR materia: atividades){
                                                                    out.print("<slice title='"+materia.getNome()+"'>"+materia.getAtividadesPeriodo(Data.getDate(), Data.getDate(86400*30)) +"</slice>");
                                                                }
                                                                                                                               %></pie>"));
                                so.write("amcharts_1336583874998");
                            </script>



                        </div><!--/span-->
                        <div class="span6">
                            <h2>Dias com atividades</h2>
                            <p id="calendar"></p>
                        </div><!--/span-->

                    </div><!--/row-->
                    <div class="row-fluid">
                        <div class="span6">
                            <h2>Tarefas</h2>
                            <ul class="unstyled">
                                <li><a href="cadastrar_avaliacao.jsp">Cadastrar avaliações</a></li>
                                <li><a href="cadastrar_trabalhos.jsp">Cadastrar Trabalho</a></li>
                                <li><a href="cadastrar_anotacao.jsp">Cadastrar Anotações</a></li>
                                <li><a href="cadastrar_materia.jsp">Cadastrar Matéria</a></li>
                            </ul>
                        </div><!--/span-->
                        <div class="span6">
                            <h2>Atividades recentes</h2>
                            <p>Histórico de atividades, exemplo Najuan cadastrou um trabalho em Programaação Orientada a Objetos - Há¡ 20 minutos. </p>
                            <p>Kamila,Convidou voce a participar do grupo "Técnico" - Ontem . </p>

                        </div><!--/span-->

                    </div><!--/row-->
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
>>>>>>> 499fa03909a79d1f07677097e9149b2b74ad3e8f
</html>