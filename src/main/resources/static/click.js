document.addEventListener("DOMContentLoaded", function() {
    var chatbotContent = document.querySelector('.chatbot'); // entire chatbot including header
    var chatbox = document.querySelector('.chatbox'); // chatbox content
    var chatInput = document.querySelector('.chat-input'); // chat input box
    var minimizeBtn = document.querySelector('.minimize-btn');
    var closeBtn = document.querySelector('.close-btn');
    var toggler = document.querySelector('.chatbot-toggler');

    // Minimize chatbot
    minimizeBtn.addEventListener('click', function() {
        if (chatbox.style.display === "none") {
            chatbox.style.display = "block";
            chatInput.style.display = "block";
        } else {
            chatbox.style.display = "none";
            chatInput.style.display = "none";
        }
    });

    // Close chatbot
    closeBtn.addEventListener('click', function() {
        chatbotContent.style.display = "none";
    });

    // Reopen chatbot from toggler
    toggler.addEventListener('click', function() {
        if (chatbotContent.style.display === "none") {
            chatbotContent.style.display = "block";
        } else {
            chatbotContent.style.display = "none";
        }
    });
});
