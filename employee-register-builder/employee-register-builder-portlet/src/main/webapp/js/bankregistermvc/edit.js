$(function () {
	$.fn.updateButton = function() {
		$val = $('#_bankregistermvc_WAR_employeeregisterbuilderportlet_bank-name').val();
		
		if($val.length >= 1){
			$('#submit-button').attr('disabled', false);
		}
		else {
			$('#submit-button').attr('disabled', true);
		}
	};
	
	$.fn.updateButton();
	
	$('#_bankregistermvc_WAR_employeeregisterbuilderportlet_bank-name').keyup(function(e) {
		$.fn.updateButton();
	});
});