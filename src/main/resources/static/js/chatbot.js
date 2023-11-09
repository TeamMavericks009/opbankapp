function navigate(pageName){
    // Navigation logic...
}

function sendMessage() {
    var userInput = document.getElementById('userInput').value;
    // Additional sendMessage code...
}

document.querySelector('.dashboard .option button[onclick="navigate(\'help\')"]').addEventListener('click', function() {
    var chatbot = document.getElementById('chatbot');
    chatbot.classList.toggle('chatbot-hidden');
});

document.getElementById('minimizeBtn').addEventListener('click', function() {
    var chatbot = document.getElementById('chatbot');
    chatbot.classList.toggle('chatbot-hidden');
});
