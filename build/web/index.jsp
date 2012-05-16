<!DOCTYPE html>
<html>

    <jsp:include page="includes/head.jsp"/>
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
                        <h1>Bem vindo, Fernando!</h1>
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
                                so.addVariable("chart_data", encodeURIComponent("<pie><slice title='Portugues'>2</slice><slice title='Matematica'>10</slice><slice title='Geografia'>5</slice><slice title='HistÃ³ria'>7</slice><slice title='Quimica'>4</slice></pie>"));
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
                                <li><a href="#">Cadastrar avaliações</a></li>
                                <li><a href="#">Cadastrar Trabalho</a></li>
                                <li><a href="#">Cadastrar Anotações</a></li>
                                <li><a href="#">Cadastrar Matéria</a></li>
                            </ul>
                        </div><!--/span-->
                        <div class="span6">
                            <h2>Atividades recentes</h2>
                            <p>Histórico de atividades, exemplo Najuan cadastrou um trabalho em ProgramaÃ§Ã£o Orientada a Objetos - Há¡ 20 minutos. </p>
                            <p>Kamila,Convidou voce a participar do grupo "Técnico" - Ontem . </p>

                        </div><!--/span-->

                    </div><!--/row-->
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
