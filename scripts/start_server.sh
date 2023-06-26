#!/bin/bash
cd /home/ec2-user/server
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install v18.12.1
npm install
npm install pm2@latest -g
# source /etc/profile.d/script.sh -> uncomment this to load any environment variables from the script.sh file
pm2 start index.js