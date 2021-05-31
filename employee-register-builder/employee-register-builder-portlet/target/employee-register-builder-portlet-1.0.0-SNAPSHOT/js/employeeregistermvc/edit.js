YUI().use(
		'aui-datepicker',
		function(A) {
			var date = new A.DatePicker({
				trigger: '.calendar',
				mask: '%d.%m.%Y',
		        popover: {
		        	toolbars: {
		        		header: [[{
		                    label: 'Today',
		                    on: {
		                    	click: function() {
		                    		date.clearSelection();
		                    		date.selectDates(new Date());
		                    	}
		                    }
		                }]]
		        	},
		        	zIndex: 1
		        },
		        on: {
		        	selectionChange: function(event) {
		        	}
				}
		    });
		}
);

$(function () {
	$.fn.updateButton = function() {
		$valName = $('#_employeeregistermvc_WAR_employeeregisterbuilderportlet_name').val();
		$valSurname = $('#_employeeregistermvc_WAR_employeeregisterbuilderportlet_surname').val();
		$valPatronymic = $('#_employeeregistermvc_WAR_employeeregisterbuilderportlet_patronymic').val();
		
		if($valName.length >= 1 && $valSurname.length >= 1 && $valPatronymic.length >= 1){
			$('#submit-button').attr('disabled', false);
		}
		else {
			$('#submit-button').attr('disabled', true);
		}
	};
	
	$.fn.updateButton();
	
	$('#_employeeregistermvc_WAR_employeeregisterbuilderportlet_name, #_employeeregistermvc_WAR_employeeregisterbuilderportlet_surname, #_employeeregistermvc_WAR_employeeregisterbuilderportlet_patronymic').keyup(function(e) {
		$.fn.updateButton();
	});
	
	
});