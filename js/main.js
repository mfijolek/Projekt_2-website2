$.ajax("./api.php/elements_table/", {
	dataType: 'json',
	type: 'GET',
	success: function(data){
		console.log(data.length == 2);
		if(data.length>1){
			var elements_1 = $.map(data, function(data1, index){
				// console.log(data1.id);
				return $('<tr><td scope="row">'+data1.id+'</td><td>'+data1.name+'</td><td>'+data1.description+'</td><td><a href="#">El2</a></td></tr>');
			});
			$('.dane_1').html(elements_1);
		}
		else{
			$('.dane_1').html('<tr><td scope="row">'+data.id+'</td><td>'+data.name+'</td><td>'+data.description+'</td><td><a href="#">El2</a></td></tr>');
		}
		
	},
	contentType: 'application/json'
});

								