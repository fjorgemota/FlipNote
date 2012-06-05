jQuery(function(){
    console.log(jQuery("form .btn-success"));
    console.log(jQuery("form .btn-danger"));
    jQuery("form .btn-success").click(function(){
        console.log(jQuery(this).parents("form"));
        jQuery(this).parents("form").get(0).submit(); // Implementa o submit em botoes de cor verde no formulario
    });
    jQuery("form .btn-danger").click(function(){
        console.log(jQuery(this).parents("form"));
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
        dateFormat:"%d/%m/%Y"
    });
}
if(!!document.getElementById("ncalendar")){
    window.ncalendar = Calendar.setup({
        cont:"ncalendar",
        dateFormat:"%d/%m/%Y",
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