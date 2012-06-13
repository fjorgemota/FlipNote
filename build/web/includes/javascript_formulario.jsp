<%@page import="util.HTMLUtil"%>
<script language="javascript" type="text/javascript" src="js/jscal2.js"></script>
<script language="javascript" type="text/javascript" src="js/lang/pt.js"></script>


<script language="javascript" type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="js/index.js"></script>
<script language="javascript" type="text/javascript" src="js/form.js"></script>
<% 
String situacao_cadastro = request.getParameter("situacao_cadastro");
if(situacao_cadastro == null){
    situacao_cadastro = "";            
}
if(!situacao_cadastro.equals("")){
    out.print("<script language=\"javascript\" type=\"text/javascript\" src=\"js/jquery.jnotifica.js\"></script>");
    out.print("<script language=\"javascript\" type=\"text/javascript\">jQuery(document).ready(function(){");
}
if(situacao_cadastro.equals("sucesso")){
    out.print(HTMLUtil.alerta("Registro cadastrado com sucesso"));
}
else if(situacao_cadastro.equals("erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante o salvamento do registro"));
    
}
if(!situacao_cadastro.equals("")){
    out.print("});</script>");
}
%>