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
		            console.log(event.newSelection)
		        	}
				}
		    });
		}
)