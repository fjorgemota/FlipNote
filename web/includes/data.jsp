<%@page import="util.Data"%>
<div class="row-fluid">
    <div class="span6">
        <p>Data da avaliação: </p>
    </div>
    <div class="span6">
        <input type ="text" id="datepicker" value="<% out.print(Data.getDateByFormat("dd/MM/yyyy")); %>" />
    </div>

</div>