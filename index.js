var request = require('request');

var url = 'https://blog.learnmorecloud.com/learn-how-to-use-a-lambda-function-to-trigger-a-codebuild-in-another-account';

var options = {
    url: url,
    method: 'GET',
    headers: {
        'Content-Type': 'application/json'
    }
};

request(options, function (error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log("success");    
    }
    else {
        console.log(error);
    }
    }
);
