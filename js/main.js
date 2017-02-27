$( document ).ready(function() {

	var drowAllElements = function(data){
		if(data.length>1){
			var elements_1 = $.map(data, function(data1, index){
				// console.log(data1.id);
				return $('<tr scope="row"><td>'+data1.id+'</td><td>'+data1.name+'</td><td>'+data1.description+'</td><td><a href="#">El2</a></td></tr>');
			});
			$('.dane_1').html(elements_1);
		}
		else{
			$('.dane_1').html('<tr scope="row"><td>'+data.id+'</td><td>'+data.name+'</td><td>'+data.description+'</td><td><a href="#">El2</a></td></tr>');
		}		
	};
	//load data with ajax
	var load_data = function(){
		return $.ajax("./api.php/elements_table/", {
			dataType: 'json',
			type: 'GET',
			async: !1,
			success: function(data){
				// console.log(data.length > 1);
				drowAllElements(data);		
			},
			contentType: 'application/json'
		});
	
	};

	var data_el = load_data();
	var array_data = data_el.responseJSON;

	//wyszukiwarka 1 do 1
	var findItem = function(term) {
		var result = [];
	   if($.isArray(array_data)){
		   $.map(array_data, function(data, index){
		   		if(term == data.name) { 		   			
		   			//console.log('id = ' + data.id + ', name = ' + data.name );
		   			result.push(data)		   			
		   		} else{			
		   		}
		   });
	   } else {
	   		console.log("it's not an array");
	   }
	   console.log(result);
	   return result;
	};

	var findItem2 = function(term) {
		var result =[];

	};

	$('#search_input').on('submit', function(event){
		event.preventDefault();
		var to_find = $(this).find('input').val();
		console.log("to_find = "+to_find.length);
		if(to_find.length !== 0){
			result=findItem(to_find);
			console.log('in array = ' + result);
			console.log('result.length = ' + result.length);
			if(result.length == 0 || result.length == null){
				$('.dane_1').html('<tr scope="row"><td>Brak wyników</td></tr>');
			} else{
				var search_rows = $.map(result, function(value, index){
					return $('<tr scope="row"><td>'+value.id+'</td><td>'+value.name+'</td><td>'+value.description+'</td><td><a href="#">El2</a></td></tr>');
				});
				$('.dane_1').html(search_rows);
			}
		}else{
			drowAllElements(array_data);
		}
	});

});