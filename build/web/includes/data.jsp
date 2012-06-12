<%@page import="util.Data"%>
<div class="row-fluid">
    <div class="span6">
        <p>Data da avaliação: </p>
    </div>
    <div class="span6">
        <input type ="text" id="datepicker" name="data" value="<% out.print(Data.getDateByFormat("yyyy-MM-dd")); %>" />
    </div>

</div>