function find_report()
{
            
        
                    var from_date=document.getElementById("from_date").value;
                    var to_date=document.getElementById("to_date").value;
                    var type=document.getElementById("report_type").value;
                    $.post("report_view.php",{from_date:from_date, to_date:to_date, type:type},function(result)
                    {
                    if(result)
                    {
                            document.getElementById("change_only").innerHTML=result;
                    }
                    });		

                
            

}