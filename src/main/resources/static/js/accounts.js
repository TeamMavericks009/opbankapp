var accountSection = document.querySelector('.account');

function zoomIn() {
	// Add the zoom-in class to the account section
	accountSection.classList.add('zoom-in');

	// Listen for a click on the window to zoom out
	window.addEventListener('click', function(e) {
		if (!accountSection.contains(e.target)) {
			zoomOut();
		}
	}, { once: true }); // The listener is removed after the event fires once
}

function zoomOut() {
	// Remove the zoom-in class from the account section
	accountSection.classList.remove('zoom-in');
}
