document.addEventListener("DOMContentLoaded", function() {

	var loginForm = document.querySelector('.login-form');

	loginForm.addEventListener('submit', function(event) {

		// Resetting error states
		resetErrorState();

		// Preventing the default form submission
		event.preventDefault();

		var usernameInput = document.getElementById('username');
		var passwordInput = document.getElementById('password');

		var isValid = true;

		// Basic validation
		if (usernameInput.value.trim() === "") {
			showError(usernameInput, 'usernameError', 'Username cannot be empty!');
			isValid = false;
		}

		if (passwordInput.value.trim() === "") {
			showError(passwordInput, 'passwordError', 'Password cannot be empty!');
			isValid = false;
		}

		// If validation passed, optionally send the form data to server here
		if (isValid) {
			localStorage.setItem('user', JSON.stringify({ username }));
			document.querySelector(".login-form").submit();
		}
	});
	
	
	// Function to show error
	function showError(inputElement, errorElementId, message) {
		inputElement.classList.add('input-error');
		document.getElementById(errorElementId).innerText = message;
	}

	// Function to reset error states
	function resetErrorState() {
		var inputElements = document.querySelectorAll('.input-field');
		var errorMessages = document.querySelectorAll('.error-message');

		inputElements.forEach(function(input) {
			input.classList.remove('input-error');
		});

		errorMessages.forEach(function(error) {
			error.innerText = '';
		});
	}
});

function navigateToRegistration() {
    window.location.href = '/register'; // This should match the URL mapping in Spring Boot controller
};


function navigateToForgotPassword(event) {
    event.preventDefault(); // This prevents the form from submitting
    window.location.href = '/forgotDetails'; // This should match the URL mapping in Spring Boot controller
}

