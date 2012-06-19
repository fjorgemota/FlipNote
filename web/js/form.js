jQuery(function(){
    console.log(jQuery("form .btn-success"));
    console.log(jQuery("form .btn-danger"));
    function enviaFormulario(f){
        jQuery(f).parents("form").get(0).submit();
    }
    jQuery("form .btn-success").click(function(){
        enviaFormulario(this); // Implementa o submit em botoes de cor verde no formulario
    });
    jQuery("form *").keypress(function(e){
        if(e.keyCode == 13){
            enviaFormulario(this);
        }
        return true;
    });
    jQuery("form .btn-danger").click(function(){
        jQuery(this).parents("form").get(0).reset(); // Implementa o reset em botoes de cor vermelha no formulario
    });
});

if(!!document.getElementById("datepicker")){
    window.datepicker = Calendar.setup({
        inputField:"datepicker",
        trigger:"datepicker",
        onSelect:function(){
            this.hide();
        },
        dateFormat:"%Y-%m-%d"
    });
}
if(!!document.getElementById("ncalendar")){
    window.ncalendar = Calendar.setup({
        cont:"ncalendar",
        dateFormat:"%Y-%m-%d",
        onSelect:function(){
            jQuery("#nfield").val(this.selection.print("%d/%m/%Y","").join(""))
        }
    });
}
setInterval(function(){
    if(!$("#nyes").length || !$("#ncalendar").length){
        return;
    }
    var nYes = $("#nyes")[0].checked;
    if(nYes){
        $("#ncalendar").show();
    }
    else{
        $("#ncalendar").hide();
    }
},200);