$(document).ready(function() {

	$('.character_info').hide();

	$('.vote_boxes').hover( 
		function(event){
			$('.character_info').show();
		},
		function(event){
			$('.character_info').hide();
		}
	);

	$('.vote_boxes').on('click', function(event){
		var box_id = $(this).data('box-id');
		// alert(box_id);
		$.post('/vote', { box_id: box_id }, function(data){
			console.log('data', data);
			if (data){
				$('#success_msg').html('Thanks for the Vote').show().fadeOut(4000);
			}

		});
	});
});