$(document).foundation();

$(document).ready(function(){
	$('span.mail').each(function(){
		$(this).replaceWith($(this).text().replace(/ at /,'@').replace(/ dot /g, '.'));
	});
});