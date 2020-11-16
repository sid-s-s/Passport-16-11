/**
 * 
 */

	$(function() {

	$.validator.setDefaults({
		errorClass: 'help-block',
		highlight: function(element) {
			$(element)
				.closest('.form-group')
				.addClass('has-error');
		},
		unhighlight: function(element) {
			$(element)
				.closest('.form-group')
				.removeClass('has-error');
		},
		errorPlacement: function(error, element) {
			if (element.prop('type') === 'checkbox') {
				error.insertAfter(element.parent());
			} else {
				error.insertAfter(element);
			}
		}
	});
	//age calculator

	$(document).ready(function() {
		$("#dob").change(function() {
			var start_date = new Date($("#dob").val());
			var date = new Date();
			var end_date = new Date(start_date);
			end_date.setFullYear(date.getFullYear() - start_date.getFullYear());
			$("#age").val(end_date.getFullYear());
		});
	})

	$.validator.addMethod('strongPassword', function(value, element) {
		return this.optional(element)
			|| value.length >= 8
			&& /\d/.test(value)
			&& /[a-z]/i.test(value);
	}, 'Your password must be at least 8 characters long and contain at least one number and one character\'.')

	$.validator.addMethod('select', function(value, element) {
		if (value === 'select') {
			return false;
		}
		else
			return true;
	}, 'Select an option')

	$("#appForm").validate({
		errorClass: 'errors',

		rules: {

			applicationFor: {
				select: true
			},

			applicationType: {
				select: true
			},

			state: {
				required: true,
				select: true
			},

			maritialStatus: {
				required: true,
				select: true
			},

			firstname: {
				required: true
			},

			lastname: {
				required: true
			},

			dob: {
				required: true
			},
			email: {
				required: true
			},
			mobile: {
				required: true
			},
			password: {
				required: true
			},
			cnf_password: {
				required: true
			},
			address: {
				required: true
			},
			address2: {
				required: true
			},
			city: {
				required: true
			},
			zip: {
				required: true
			},
			birthTown: {
				required: true
			},
			aadhar: {
				required: true
			},

			terms: {
				required: true
			}
		},

		messages: {


			state: {
				required: 'select your state'
			},


			maritialStatus: {
				required: 'Select Maritial status'
			},


			terms: {
				required: 'check this box'

			},
			firstname: {
				required: 'Enter a first name'
			},

			lastname: {
				required: 'Enter a last name'
			},

			dob: {
				required: 'Enter your Date of birth'
			},
			email: {
				required: 'Enter your email'
			},
			mobile: {
				required: 'Enter your mobile number'
			},
			password: {
				required: 'Enter a password'
			},
			cnf_password: {
				required: 'Re-enter your password'
			},
			address: {
				required: 'Enter your address'
			},
			address2: {
				required: 'Enter a secondary address'
			},
			city: {
				required: 'Enter your city'
			},
			zip: {
				required: 'Enter your zip/pin code'
			},
			townBirth: {
				required: 'Enter your birth toown or village'
			},
			aadhar: {
				required: 'Enter your Aadhar number'
			},

		}
	});

});

