#!/bin/bash
cd /home/ec2-user/server
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 16
npm install pm2@latest -g
pm2_list=$(pm2 list)
if [ -n "$pm2_list" ]; then
    pm2 delete all
    echo "All servers have been deleted."
else
    echo "PM2 list is empty. No servers to delete."
fi
# source /etc/profile.d/script.sh -> uncomment this to load any environment variables from the script.sh file
pm2 start index.js # change directory to the location of your server .js file to start your server