$( document ).ready(function() {

	var load_data = function(){
		return $.ajax("./api.php/elements_table/", {
			dataType: 'json',
			type: 'GET',
			async: !1,
			success: function(data){
				// console.log(data.length > 1);
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
	
	};
	//console.log(load_data());
	var data_el = load_data();
	var array_data = data_el.responseJSON;
	//console.log(array_data);

	var findItem = function(term) {
		var result;
	   if($.isArray(array_data)){
		   $.map(array_data, function(data, index){
		   		if(term == data.name) { 
		   			console.log('id = ' + data.id + ' name = ' + data.name );
		   			result = data;
		   		} else{
		   			
		   		}
		   });
	   } else {
	   		console.log("it's not an array");
	   }
	   return result;
	};

	$('#search_input').on('submit', function(event){
		event.preventDefault();
		var to_find = $(this).find('input').val();
		result=findItem(to_find);
		console.log('in array = ' + result);
		$('.dane_1').hide().html('<tr><td scope="row">'+result.id+'</td><td>'+result.name+'</td><td>'+result.description+'</td><td><a href="#">El2</a></td></tr>').show();
	});


});