$(document).ready(function(){
	$("#description > h2").click(function(){
		$.collapse(this);
	});
});

$.collapse = function(target){
	($(target).next().is(":visible")) ? $(target).next().slideUp() : $(target).next().slideDown();
	
	return false;
};