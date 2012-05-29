<%@page import="modelo.MateriaAR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MateriaDAO"%>
<div class="row-fluid">
    <div class="span6">
        <p>Nome da matéria do trabalho: </p>
    </div>
    <div class="span6">
        <select > 
            <%
                ArrayList<MateriaAR> lista = MateriaDAO.getMaterias();
                for (MateriaAR n : lista) {
                    out.print("<option>" + n.getNome() + "</option>");

                }

            %>           
        </select>
    </div>

</div>