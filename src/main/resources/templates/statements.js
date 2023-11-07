// Add your logic to fetch data and populate the table
function searchTransactions() {
  // Logic to fetch and display transactions based on search
  console.log('Search clicked');
}

function clearSearch() {
  document.getElementById('transactionDateFrom').value = '';
  document.getElementById('transactionDateTo').value = '';
  document.getElementById('transactionPeriod').selectedIndex = 0;
  // You might want to clear the table here as well
  console.log('Clear clicked');
}

// Example of how to populate the table with fetched data
function populateTable(transactions) {
  const tableBody = document.getElementById('transactionTable').querySelector('tbody');
  tableBody.innerHTML = ''; // Clear existing entries

  transactions.forEach(transaction => {
    const row = document.createElement('tr');
    row.innerHTML = `
      <td>${transaction.date}</td>
      <td>${transaction.description}</td>
      <td>${transaction.debit}</td>
      <td>${transaction.credit}</td>
      <td>${transaction.balance}</td>
    `;
    tableBody.appendChild(row);
  });
}

// Dummy data
const transactions = [
  { date: '10-10-2023', description: 'OPTUS BILLING A NS AUS Card', debit: '$13.00', credit: '$0.00', balance: '$1345.00' },
  // Add more transactions as needed
];

// Populate the table with dummy data on page load
document.addEventListener('DOMContentLoaded', function() {
  populateTable(transactions);
});
