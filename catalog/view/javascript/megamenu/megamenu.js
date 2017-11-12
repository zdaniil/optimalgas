$(document).ready(function() {
	// Menu
	$('#menu-vertical .dropdown-menu').each(function() {
		var menu = $('#menu-vertical').offset();
		var dropdown = $(this).parent().offset();

		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu-vertical').outerWidth());

		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});
//MENU 2
nsmenu_menu();
additional_menu();
$( window ).resize(function() {
	nsmenu_menu();
	additional_menu();
});
$( "#additional-menu a.dropdown-toggle" ).bind( "click", function() {
	if(($(this).attr('href')!="javascript:void(0);")&&($( document ).width()>767))
	{
	window.document.location=$(this).attr('href');
	}
});
$( "#horizontal-menu a.dropdown-toggle" ).bind( "click", function() {
	if(($(this).attr('href')!="javascript:void(0);")&&($( document ).width()>767))
	{
	window.document.location=$(this).attr('href');
	}
});
$( "#menu-vertical a.dropdown-toggle" ).bind( "click", function() {
	if(($(this).attr('href')!="javascript:void(0);")&&($( document ).width()>767))
	{
	window.document.location=$(this).attr('href');
	}
});

function additional_menu(){
	$(".nsmenu-bigblock-additional").css('width',$("#additional-menu .navbar-collapse").outerWidth()-2);
	$('#additional-menu .dropdown-menu').each(function() {
		var menu = $('#additional-menu .navbar-collapse').offset();
		var dropdown = $(this).parent().offset();		
		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#additional-menu .navbar-collapse').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 1) + 'px');
		}		
		var l=$(this).outerWidth()-2;			
		$(this).find(".nsmenu-ischild-simple").css('left',l);
		
	});
}
function nsmenu_menu(){
	$(".nsmenu-bigblock").css('width',$("#horizontal-menu .navbar-collapse").outerWidth()-2);
	$('#horizontal-menu .dropdown-menu').each(function() {
		var menu = $('#horizontal-menu .navbar-collapse').offset();
		var dropdown = $(this).parent().offset();		
		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#horizontal-menu .navbar-collapse').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 1) + 'px');
		}		
		var l=$(this).outerWidth()-2;			
		$(this).find(".nsmenu-ischild-simple").css('left',l);
		
	});
}	
});


