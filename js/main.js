$.ajax("./api.php/elements_table/1").done(function(data){
	console.log(data);
	$('#cell1').html(data);
});