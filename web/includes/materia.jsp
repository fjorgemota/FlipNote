<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MateriaDAO"%>
<div class="row-fluid">
    <div class="span6">
        <p>Nome da matéria do trabalho: </p>
    </div>
    <div class="span6">
        <select name="materia" id="materia"> 
            <%
                ArrayList<MateriaAR> lista = MateriaDAO.getMateriasPorAluno(Sessao.getAlunoLogado(request));
                for (MateriaAR n : lista) {
                    out.print("<option value=\""+n.getID()+"\">" + n.getNome() + "</option>");

                }

            %>           
        </select>
    </div>

</div>