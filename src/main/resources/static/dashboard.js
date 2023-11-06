function toggleVisibility(elementId, fullValue) {
    const element = document.getElementById(elementId);
    if (element.classList.contains('masked')) {
        element.textContent = fullValue;
        element.classList.remove('masked');
    } else {
        element.textContent = '*****' + fullValue.slice(-2);
        element.classList.add('masked');
    }
}

function showBalance(elementId, fullValue) {
    const element = document.getElementById(elementId);
    element.textContent = fullValue;
    element.classList.remove('masked');
}

// Previous JavaScript...

function showBalanceAndAccount() {
	var balance = document.getElementById('balance').getAttribute('data-balance');
    var accountNumber = document.getElementById('accountNumber').getAttribute('data-account-number');
    
    showFullValue('balance', balance);
    showFullValue('accountNumber', accountNumber);
}

function showFullValue(elementId, fullValue) {
    const element = document.getElementById(elementId);
    element.textContent = fullValue;
    element.classList.remove('masked');
}

