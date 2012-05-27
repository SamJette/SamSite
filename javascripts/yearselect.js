$(function() {
	$(".yearselect select:first").bind("change", function() {
		nextYear = parseInt($(this).attr('value'), 10) + 1;
		$("select:last").val(nextYear);
	});
	$(".yearselect select:last").bind("change", function() {
		previousYear = parseInt($(this).attr('value'), 10) - 1;
		$("select:first").val(previousYear);
	});
});