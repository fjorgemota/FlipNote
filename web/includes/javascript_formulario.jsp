<%@page import="util.HTMLUtil"%>
<script language="javascript" type="text/javascript" src="js/jscal2.js"></script>
<script language="javascript" type="text/javascript" src="js/lang/pt.js"></script>


<script language="javascript" type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="js/index.js"></script>
<script language="javascript" type="text/javascript" src="js/form.js"></script>
<% 
String situacao = request.getParameter("situacao");
if(situacao == null){
    situacao= "";            
}
if(!situacao.equals("")){
    out.print("<script language=\"javascript\" type=\"text/javascript\" src=\"js/jquery.jnotifica.js\"></script>");
    out.print("<script language=\"javascript\" type=\"text/javascript\">jQuery(document).ready(function(){");
}
if(situacao.equals("cadastro_sucesso")){
    out.print(HTMLUtil.alerta("Registro cadastrado com sucesso"));
}
else if(situacao.equals("cadastro_erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante o salvamento do registro"));
}
else if(situacao.equals("apagado_erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante o apagamento do registro"));
}
else if(situacao.equals("apagado_sucesso")){
    out.print(HTMLUtil.alerta("Registro apagado com sucesso"));
}
else if(situacao.equals("login_sucesso")){
    out.print(HTMLUtil.alerta("Login realizado com sucesso"));
}
else if(situacao.equals("login_erro")){
    out.print(HTMLUtil.alerta("Nome ou senha incorretos"));
}
else if(situacao.equals("logout_sucesso")){
    out.print(HTMLUtil.alerta("Você foi desconectado com sucesso"));
}
else if(situacao.equals("logout_erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante o logout"));
}
else if(situacao.equals("foi_hacker")){
    out.print(HTMLUtil.alerta("Erro: Hackers não são permitidos por aqui..engraçadinho.."));
}
else if(situacao.equals("atualizado_sucesso")){
    out.print(HTMLUtil.alerta("Registro atualizado com sucesso"));
}
else if(situacao.equals("atualizado_erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante a atualização do registro"));
}
else if(situacao.equals("carregamento_erro")){
    out.print(HTMLUtil.alerta("Houve um erro durante o carregamento do registro"));
}
if(!situacao.equals("")){
    out.print("});</script>");
}
%>