$(document).ready(function() {

	// $('.voting_boxes div').hover( 
	// 	function(event){
	// 		console.log('enter over the div')
	// 	},
	// 	function(event){
	// 		console.log('exit');
	// 	}
	// );

	$('.vote_boxes').on('click', function(event){
		var box_id = $(this).data('box-id');
		// alert(box_id);
		$.post('/vote', { box_id: box_id }, function(data){
			console.log('data', data);
			if (data){
				$('#success_msg').html('Thanks for the Vote').show().fadeOut(2000);
			}

		});
	});
});