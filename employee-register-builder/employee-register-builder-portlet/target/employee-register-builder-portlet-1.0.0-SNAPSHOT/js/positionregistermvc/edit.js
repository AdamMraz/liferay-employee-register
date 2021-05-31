$(function () {
	$.fn.updateButton = function() {
		$val = $('#_positionregistermvc_WAR_employeeregisterbuilderportlet_position-name').val();
		
		if($val.length >= 1){
			$('#submit-button').attr('disabled', false);
		}
		else {
			$('#submit-button').attr('disabled', true);
		}
	};
	
	$.fn.updateButton();
	
	$('#_positionregistermvc_WAR_employeeregisterbuilderportlet_position-name').keyup(function(e) {
		$.fn.updateButton();
	});
});