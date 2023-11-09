document.addEventListener("DOMContentLoaded", function () {
  fetchCardDetails();
});

function fetchCardDetails() {
  // Mock function to simulate an API call to your Java backend
  const cardDetails = mockCardDetailsApi();

  // Assuming the mock function returns an object like:
  // { cardNumber: '1234 5678 9012 3456', cardName: 'John Doe', cardMonth: '08', cardYear: '23', cardCvc: '123' }
  populateCard(cardDetails);
}

function mockCardDetailsApi() {
  // This should be replaced with an actual API call
  return {
    cardNumber: '1234 5678 9012 3456',
    cardName: 'John Doe',
    cardMonth: '08',
    cardYear: '23',
    cardCvc: '123'
  };
}

function populateCard(details) {
  const { cardNumber, cardName, cardMonth, cardYear, cardCvc } = details;

  document.getElementById("number").textContent = cardNumber;
  document.getElementById("name").textContent = cardName;
  document.getElementById("month").textContent = cardMonth;
  document.getElementById("year").textContent = cardYear;
  document.getElementById("cvc").textContent = cardCvc;

  document.getElementById("table-number").textContent = cardNumber;
  document.getElementById("table-name").textContent = cardName;
  document.getElementById("table-expiry").textContent = `${cardMonth}/${cardYear}`;
  document.getElementById("table-cvc").textContent = cardCvc;
}

// Add event listener to the disable button
const disableButton = document.querySelector('.disable-btn');
disableButton.addEventListener('click', function() {
  // Here you would add the code to actually disable the card via your backend
  alert('Card has been disabled!');
  // Optionally change the text or style of the button to indicate the card is disabled
  this.textContent = 'Card Disabled';
  this.disabled = true;
  this.style.backgroundColor = 'grey';
});
