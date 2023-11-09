function zoomIn() {
  var table = document.querySelector('.transaction-history-container table');
  var currentZoom = table.style.transform || 'scale(1)';
  var scaleValue = currentZoom.includes('scale') ? parseFloat(currentZoom.split('(')[1]) : 1;
  var newZoom = scaleValue + 0.2; // increase scale by 0.1
  table.style.transform = 'scale(' + newZoom + ')';
}

function zoomOut() {
  var table = document.querySelector('.transaction-history-container table');
  var currentZoom = table.style.transform || 'scale(1)';
  var scaleValue = currentZoom.includes('scale') ? parseFloat(currentZoom.split('(')[1]) : 1;
  var newZoom = scaleValue - 0.2; // decrease scale by 0.1
  table.style.transform = 'scale(' + newZoom + ')';
}

/*
var accountSection = document.querySelector('.transaction-history-container table');

function zoomIn() {
	accountSection.classList.add('zoom-in');

	window.addEventListener('click', function(e) {
		if (!accountSection.contains(e.target)) {
			zoomOut();
		}
	}, { once: true }); // The listener is removed after the event fires once
}

function zoomOut() {
	accountSection.classList.remove('zoom-in');
}*/