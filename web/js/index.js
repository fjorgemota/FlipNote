if(!!document.getElementById("calendar")){
    window.calendar = Calendar.setup({
        cont:"calendar",
        weekNumbers:false,
        selectionType: Calendar.SEL_SINGLE,
        min:Calendar.dateToInt(new Date(new Date().getTime()-86400)),
        onSelect:function(e){
            var d = Calendar.intToDate(this.selection.getFirstDate());
            window.location.href = "#resumo/"+d.getFullYear()+"/"+(d.getMonth()+1)+"/"+d.getDate();
        }
    });
}