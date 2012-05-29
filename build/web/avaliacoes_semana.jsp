<%@page import="dao.MateriaDAO"%>
<%@page import="modelo.Materia"%>
<%@page import="java.util.ArrayList"%>
<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Avaliações da semana"/>
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



                    <div class="row-fluid">
                        <div class="span6">
                            <h2>Avaliações da Semana</h2> 

                            <script type="text/javascript" src="http://extra.amcharts.com/public/swfobject.js"></script>
                            <div id="amcharts_1336583874998">You need to upgrade your Flash Player</div>
                            <script type="text/javascript">
                                var so = new SWFObject("http://extra.amcharts.com/public/ampie.swf", "ampie", "75%", "30%", "8", "#FFFFFF");
                                so.addVariable("path", "ampie/");
                                so.addVariable("chart_settings", encodeURIComponent("<settings><redraw>1</redraw><background><alpha>100</alpha><border_alpha>20</border_alpha></background><legend><enabled>0</enabled><align>center</align></legend><pie><y>50%</y></pie><data_labels><show>{title}: {value}</show><max_width>140</max_width></data_labels></settings>"));
                                so.addVariable("chart_data", encodeURIComponent("<pie><%
                                    ArrayList<Materia> atividades = MateriaDAO.listaAtividadesPorMes(1);
                                    for (Materia materia : atividades) {
                                        out.print("<slice title='" + materia.getNome() + "'>" + materia.getAtividades_mes() + "</slice>");
                                    }
                                %></pie>"));
                                    so.write("amcharts_1336583874998");
                            </script>

                        </div>

                        <div class="span6">
                            <h3>Dias com atividades</h3>
                            <p id="calendar"></p>
                        </div>

                    </div>

                    <div class="span6">
                        <h3>Conteudo das avaliações</h3>

                    </div>


                    <div class="span6">
                        <h3>Notas das ultimas provas</h3>
                        
                        
                      

                    </div>

                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
