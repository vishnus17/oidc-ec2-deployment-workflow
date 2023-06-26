#!/bin/bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
pm2_list=$(pm2 list)
if [ -n "$pm2_list" ]; then
    pm2 delete all
    echo "All servers have been deleted."
else
    echo "PM2 list is empty. No servers to delete."
fi