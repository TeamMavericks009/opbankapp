/*function zoomIn() {
  // Add the zoom-in class to the account section
  document.querySelector('.account').classList.add('zoom-in');

  // Listen for a click outside the account section to zoom out
  window.addEventListener('click', function(e) {
	if (!document.querySelector('.account').contains(e.target)) {
	  zoomOut();
	}
  }, { once: true }); // The listener is removed after the event fires once
}

function zoomOut() {
  document.addEventListener('click', function(event) {
	if (!accountSection.contains(event.target)) {
	  accountSection.classList.remove('zoom-in');
	}
  });
}*/

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
