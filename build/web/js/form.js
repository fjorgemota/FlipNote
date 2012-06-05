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
window.ncalendar = Calendar.setup({
    cont:"ncalendar",
    dateFormat:"%d/%m/%Y",
    onSelect:function(){
        jQuery("#nfield").val(this.selection.print("%d/%m/%Y","").join(""))
    }
});
setInterval(function(){
    var nYes = $("#nyes")[0].checked;
    if(nYes){
        $("#ncalendar").show();
    }
    else{
        $("#ncalendar").hide();
    }
},200);