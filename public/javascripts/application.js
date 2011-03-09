// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){

	$(".hide-comments").live("click", function(){
		
		if($(this).html() == "[+]")
		{
			$(this).html("[-]");
		}
		else
		{
			$(this).html("[+]");
		}
		
		$("div.child-" + $(this).attr("id")).toggle();
		return false;
	});
	
	$("#tabs").tabs();
	
	$(".cancel-comment").live("click", function(){
		$(this).parent().parent().parent(".post-a-comment").remove();
	});
	
	$("#person_later_date").change(function(){
		$("#later-date-fields").toggle();
	});
	
	
	if($("#person_later_date").is(":checked")) {
		$("#later-date-fields").show();
	}
	
	$("#share_with").autocomplete("/users/autocomplete");
	
	
	$("a.show-markdown").live("click", function(){
		$(this).parent().children("table.markdown-help").toggle();
		
		return false;
	});
});