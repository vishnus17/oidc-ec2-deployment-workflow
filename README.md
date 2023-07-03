# Using OpenID Connect to deploy to AWS using GitHub Actions

GitHub Actions workflow to 
1. Authenticate with AWS using the IAM role created for OpenID Connect.
2. Create a new deployment in CodeDeploy specifying the GitHub commit ID.
3. CodeDeploy will then:
   - Install the CodeDeploy agent on the EC2 instance if needed.
   - Download the new code from GitHub.
   - Run the Application Stop script to stop any running processes.
   - Copy the new code to the EC2 instance.
   - Run the Application Start script to Install Node.js and PM2, unload any old PM2 processes, and start the Node.js application using PM2.
