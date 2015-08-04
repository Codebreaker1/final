function show_action(table, status)
{
	$("#total_body").slideDown();
	if(status=='free')
	{
		create_order(table);
	}
	else if(status=='ordered')
	{
		show_order(table)
	}
	else if(status=='waiting')
	{
		show_bill(table);			
	}
}


function hide_page()
{
	$("#total_body").slideUp();	
		window.location.reload();
}



function void_order(order_no)
{
    var user=prompt("Enter User Name", "");
    var pass=prompt("Enter Password", "");
    $.post("void_order.php",{user:user, pass:pass, order_no:order_no},function(result)
    {
        if(result)
        {
            if(result=='ok')
            {
                window.location.href="admin.php?page=order_det&id="+order_no;
            }
            else
            {
                alert(result)
            }
        }
    });
}




function create_order(table)
{
	var waiter=prompt("Enter Waiter Id No");
        if(waiter!=null )
        {
            	var person=prompt("How Many Person Cover");
                if(person!=null)
                {
                    $.post("create_order.php",{table:table, waiter:waiter, person:person},function(result)
                    {
                            if(result)
                            {
                                    alert(result);	
                            }
                            else
                            {
                                    show_order(table);	
                            }
                    });
                }
        }
}



function show_order(table)
{
	$.post("show_order.php",{table:table},function(result)
	{
		if(result)
		{
			document.getElementById("total_body").innerHTML=result;
			get_order(table);	
		}
	});
}


function show_bill(table)
{
	$.post("show_bill.php",{table:table},function(result)
	{
		if(result)
		{
			document.getElementById("total_body").innerHTML=result;
		}
	});
}




function get_order(table)
{
	$.post("get_order.php",{table:table},function(result)
	{
		if(result)
		{
			view_order(result);	
		}
	});
}

function show_catagory(food)
{
	$(".li_all").hide();
	$("."+food).show();	
}

		function save_order_quick(food_code)
		{
			$.post("find_food_name.php",{food_code:food_code},function(result_n)
			{
				if(result_n)
				{
					if(result_n==0)
					{
						alert(food_code+" It Is Not Valid Food Code");
						document.getElementById("food_code").value="";	
					}
					else
					{
						quentity=prompt("Enter Quantity Of " + result_n);
                                                if(quentity>0)
                                                {
                                                    order_no=document.getElementById("order_no").value;
                                                    $.post("save_order_quick.php",{order_no:order_no,food_code:food_code, quentity:quentity},function(result)
                                                    {
                                                            if(result)
                                                            {
                                                                    alert(result);
                                                            }
                                                            else
                                                            {
                                                                    document.getElementById("food_code").value="";
                                                                    view_order( order_no );	
                                                            }
                                                    });
                                                }
                                                else
                                                {
                                                    document.getElementById("food_code").value="";
                                                }
					}
				}
			});
		}

		function delete_order(order_no, id)
		{
			var com=confirm("Are You sure Delete This Order");
			if(com==true)
			{
				$.post("delete_order.php",{order_no:order_no,id:id},function(result)
				{
					if(result)
					{
						alert(result);
					}
					else
					{
						view_order( order_no );	
					}
				});
			}
		}


		function view_order( order_no)
		{
			$.post("view_order.php",{order_no:order_no},function(result)
			{
				if(result)
				{
					document.getElementById("order_list").innerHTML=result;
                                        document.getElementById("food_code").focus();
				}
			});
		}


function login_check()
{
	var user =document.getElementById("login_user").value;
	var pass =document.getElementById("login_pass").value;
			$.post("login_check.php",{user:user, pass:pass},function(result)
			{
				if(result)
				{
					if(result=='on')
					{
						var sta='ok';
						return true;	
					}
					else
					{
						document.getElementById("login_info").innerHTML=result;
						return false;						
					}
				}
			});
}

function del_con()
{
	return confirm("Are you sure delete this information");	
}












		function cal_ser_p()
		{
			var total_bill=parseFloat("0"+document.getElementById("total_bill").value);
			var total_vat=parseFloat("0"+document.getElementById("total_vat").value);
			var s_charge_p=parseFloat("0"+document.getElementById("s_charge_p").value);
			var s_charge_t=parseFloat("0"+document.getElementById("s_charge_t").value);
			var discount_p=parseFloat("0"+document.getElementById("discount_p").value);
			var discount_t=parseFloat("0"+document.getElementById("discount_t").value);
			var pay_tk=parseFloat("0"+document.getElementById("pay_tk").value);
			s_charge_p=s_charge_t*100/total_bill;
			document.getElementById("s_charge_p").value=s_charge_p;
			document.getElementById("total_payable_bill").value=total_bill+total_vat+s_charge_t-discount_t;
			document.getElementById("back_tk").value=pay_tk-(total_bill+total_vat+s_charge_t-discount_t);
		}
		
		function cal_ser_t()
		{
			var total_bill=parseFloat("0"+document.getElementById("total_bill").value);
			var total_vat=parseFloat("0"+document.getElementById("total_vat").value);
			var s_charge_p=parseFloat("0"+document.getElementById("s_charge_p").value);
			var s_charge_t=parseFloat("0"+document.getElementById("s_charge_t").value);
			var discount_p=parseFloat("0"+document.getElementById("discount_p").value);
			var discount_t=parseFloat("0"+document.getElementById("discount_t").value);
			var pay_tk=parseFloat("0"+document.getElementById("pay_tk").value);
			s_charge_t=total_bill*s_charge_p/100;
			document.getElementById("s_charge_t").value=s_charge_t;
			document.getElementById("total_payable_bill").value=total_bill+total_vat+s_charge_t-discount_t;
			document.getElementById("back_tk").value=pay_tk-(total_bill+total_vat+s_charge_t-discount_t);
		}		
		
		function cal_dis_p()
		{
			var total_bill=parseFloat("0"+document.getElementById("total_bill").value);
			var total_vat=parseFloat("0"+document.getElementById("total_vat").value);
			var s_charge_p=parseFloat("0"+document.getElementById("s_charge_p").value);
			var s_charge_t=parseFloat("0"+document.getElementById("s_charge_t").value);
			var discount_p=parseFloat("0"+document.getElementById("discount_p").value);
			var discount_t=parseFloat("0"+document.getElementById("discount_t").value);
			var pay_tk=parseFloat("0"+document.getElementById("pay_tk").value);
			discount_p=discount_t*100/total_bill;
			document.getElementById("discount_p").value=discount_p;
			document.getElementById("total_payable_bill").value=total_bill+total_vat+s_charge_t-discount_t;
			document.getElementById("back_tk").value=pay_tk-(total_bill+total_vat+s_charge_t-discount_t);
		}
		
		function cal_dis_t()
		{
			var total_bill=parseFloat("0"+document.getElementById("total_bill").value);
			var total_vat=parseFloat("0"+document.getElementById("total_vat").value);
			var s_charge_p=parseFloat("0"+document.getElementById("s_charge_p").value);
			var s_charge_t=parseFloat("0"+document.getElementById("s_charge_t").value);
			var discount_p=parseFloat("0"+document.getElementById("discount_p").value);
			var discount_t=parseFloat("0"+document.getElementById("discount_t").value);
			var pay_tk=parseFloat("0"+document.getElementById("pay_tk").value);
			discount_t=total_bill*discount_p/100;
			document.getElementById("discount_t").value=discount_t;
			document.getElementById("total_payable_bill").value=total_bill+total_vat+s_charge_t-discount_t;
			document.getElementById("back_tk").value=pay_tk-(total_bill+total_vat+s_charge_t-discount_t);
		}				



		function cal_back_t()
		{
			var total_payable_bill=parseFloat("0"+document.getElementById("total_payable_bill").value);
			var pay_tk=parseFloat("0"+document.getElementById("pay_tk").value);
                        var back_taka=pay_tk-total_payable_bill;
			document.getElementById("back_tk").value=parseFloat(back_taka).toFixed(2);
		}				




function print_order(type, act, order)
{
	$.post("return_user.php",{},function(result_u)
	{
		if(result_u)
		{
			var user=result_u;
                        $.post("order_item.php",{order:order, type:type, user:user, act:act},function(result_item)
                        {
                                if(result_item)
                                {
                                    var item_array=result_item.split("#");
                                    var len=item_array.length;
                                    var i=0;
                                    for(i=0; i<len-1; i++)
                                    {
                                        var item=item_array[i];
                                        $.post("print_order.php",{order:order, type:type, user:user, act:act, item:item},function(result)
                                        {
                                                if(result)
                                                {
                                                        //var popupWin = window.open('', '_blank', 'width=300,height=600');
                                                        //popupWin.document.open();
                                                        //popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head>' + result + '</html>');
                                                        //popupWin.document.close();				
                                                        view_order(order);
                                                }
                                        });		
                                    }
                                }
                        });		
		}
	});		
}



function print_bill(sta)
{
	$.post("return_user.php",{},function(result_u)
	{
		if(result_u)
		{
			var user=result_u;
			var order=document.getElementById("order_no").value;
			var s_charge=document.getElementById("s_charge_t").value;
			var discount=document.getElementById("discount_t").value;
                        var back_tk=document.getElementById("back_tk").value;
			$.post("print_bill.php",{order:order,s_charge:s_charge, discount:discount, user:user, sta:sta, back_tk:back_tk},function(result)
			{
				if(result)
				{
					var popupWin = window.open('', '_blank', 'width=300,height=600');
					popupWin.document.open();
					popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + result + '</html>');
					popupWin.document.close();
                                        if(sta=='paid')
                                        {
                                            window.location.reload();
                                        }
				}
			});		
		}
	});		
}


function print_bill_back(order)
{
	  $.post("print_bill_back.php",{order:order},function(result)
	  {
		  if(result)
		  {
			  var popupWin = window.open('', '_blank', 'width=300,height=600');
			  popupWin.document.open();
			  popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + result + '</html>');
			  popupWin.document.close();
		  }
	  });		
}








function print_day_report()
{
	$.post("return_user.php",{},function(result_u)
	{
		if(result_u)
		{
			var user=result_u;
			$.post("print_day_report.php",{user:user, terminal:"Terminal 1"},function(result)
			{
				if(result)
				{
					var popupWin = window.open('', '_blank', 'width=300,height=600');
					popupWin.document.open();
					popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + result + '</html>');
					popupWin.document.close();
                                        
                                        $.post("print_day_report.php",{user:user, terminal:"Terminal 2"},function(result)
                                        {
                                                if(result)
                                                {
                                                        var popupWin = window.open('', '_blank', 'width=300,height=600');
                                                        popupWin.document.open();
                                                        popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + result + '</html>');
                                                        popupWin.document.close();
                                                        window.location.reload();
                                                }
                                        });
					
				}
			});

		}
	});		
	return false;		
}



function print_food_day_report()
{
	$.post("return_user.php",{},function(result_u)
	{
		if(result_u)
		{
			var user=result_u;
			$.post("print_food_day_report.php",{user:user},function(result)
			{
				if(result)
				{
					var popupWin = window.open('', '_blank', 'width=300,height=600');
					popupWin.document.open();
					popupWin.document.write('<html><head><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + result + '</html>');
					popupWin.document.close();
                                        window.location.reload();
				}
			});

		}
	});		
	return false;		
}




function paid_bill(order)
{
	var con=confirm("Are You confirm")
	if(con==true)
	{
    $.post("check_terminal.php",{},function(terminal)
    {
            if(terminal)
            {
                    var table=document.getElementById("span_table_no").innerHTML;
                    var s_charge=document.getElementById("s_charge_t").value;
                    var discount=document.getElementById("discount_t").value;
                    var total_bill=document.getElementById("total_bill").value;
                    var total_payable=document.getElementById("total_payable_bill").value;
                    var total_vat=document.getElementById("total_vat").value;
                    var pay_tk=document.getElementById("pay_tk").value;
                    var back_tk=document.getElementById("back_tk").value;
                    if(parseFloat("0"+pay_tk)<parseFloat("0"+total_payable))
                    {
                        alert("Enter Pay Amount");
                    }
                    else if(parseFloat("0"+total_bill)<=parseFloat("0"+discount))
                    {
                        alert("Discount Too Much");
                    }
                    else
                    {
                        $.post("paid_bill.php",{order:order, table:table, s_charge:s_charge, discount:discount, total_bill:total_bill, total_payable:total_payable, terminal:terminal,total_vat:total_vat},function(result)
                        {
                                if(result)
                                {
                                    //alert(result);
                                        print_bill('paid');
                                        //window.location.reload();
                                }
                        });		
                    }
            }
    });	
	}
}


function reload_page()
{
	window.location.reload();	
}


$(document).ready(function() 
{
    $("#total_body").click(function(event) 
	{
        var div_id=event.target.id;
		if(div_id=='total_body')
		{
			hide_page();
			window.location.reload();
		}
    });
});


function find_report()
{
            $.post("set_session.php",{actual:""}, function(result1)
            {
                if(result1)
                {
                    var from_date=document.getElementById("from_date").value;
                    var to_date=document.getElementById("to_date").value;
                    var type=document.getElementById("report_type").value;
                    $.post("report_view.php",{from_date:from_date, to_date:to_date, type:type, result1:result1},function(result)
                    {
                    if(result)
                    {
                            document.getElementById("change_only").innerHTML=result;
                    }
                    });		

                }
            });

}

function find_order()
{
	var from_date=document.getElementById("from_date").value;
	var to_date=document.getElementById("to_date").value;
        var order_no=document.getElementById("order_no").value;
        if(from_date!='' || to_date!='' || order_no!='')
        {
            $.post("set_session.php",{actual:order_no}, function(result1)
            {
                if(result1)
                {
                    if(order_no=='off' || order_no=='on'){order_no='';}
                    $.post("find_order.php",{from_date:from_date, to_date:to_date, order_no:order_no, action:result1},function(result)
                    {
                            if(result)
                            {
                                    document.getElementById("change_only").innerHTML=result;
                                    document.getElementById("from_date").value="";
                                    document.getElementById("to_date").value="";
                                    document.getElementById("order_no").value="";

                            }
                    });		
                    
                }
            });
        }
        else
       {
           alert("Please fill somthing");
       }
}

function order_det_delete(id)
{
	var com=confirm("Are You Sure Delete This?");
	if(com==true)
	{
		$.post("order_det_delete.php",{id:id},function(result)
		{
			if(result)
			{
				alert(result);
			}
			else
			{
				window.location.reload();
			}
		});		
	}
}

function delete_full_order(id)
{
	var com=confirm("Are You Sure Delete This?");
	if(com==true)
	{
		$.post("delete_full_order.php",{id:id},function(result)
		{
			if(result)
			{
				alert(result);
			}
			else
			{
				window.location.reload();
			}
		});		
	}
}



function print_report()
{
	var div_element=document.getElementById("change_only").innerHTML;
	var popupWin = window.open('', '_blank', 'width=800,height=600');
	popupWin.document.open();
	popupWin.document.write('<html><head><link rel="stylesheet" type="text/css" href="print.css" /><script type="text/javascript" src="print.js"></script></head><body onload="window_print()">' + div_element + '</html>');
	popupWin.document.close();
}


function a_link(url)
{
	window.location.href=url;
}


function active_inactive(id)
{
    var e_id='check_'+id;
    var sta=document.getElementById(e_id).checked;
    $.post("change_status.php",{id:id, sta:sta},function(result)
    {
            if(result)
            {
            }
            else
            {
            }
    });		

}


function order_plus_minus(id,quan, action, order_no, user)
{
    var quantity=quan;
    if(action=='minus')
    {
        quantity=quantity-1
    }
    else if(action=='plus')
    {
        quantity=quantity+1
    }
    if(quantity>=0)
    {
        $.post("order_plus_minus.php",{id:id, quantity:quantity, action:action  },function(result)
        {
                if(result)
                {
                    if(result=='ok')
                    {
                        if(user=='')
                        {
                            view_order( order_no );
                        }
                        else
                        {
                            window.location.reload();
                        }
                    }
                    else
                    {
                        alert(result);
                    }
                }
        });		
    }
}

function runScript(e) {
  
    if (e.keyCode == 13) {
         
       document.getElementById('bill_paid_id').click();
    }
}
function add_modify(alt,id,order)
{
    var modify=prompt("Enter Modify/Code", alt);
    if(modify!=null)
    {
        $.post("add_modify.php",{id:id, modify:modify},function(result)
        {
                if(result)
                {
                    alert(result)
                }
                else
                {
                    view_order(order);
                }
        });		
    }
}
