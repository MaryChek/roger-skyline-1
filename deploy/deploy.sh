#!/bin/sh
echo "\033[1;34mStarting to deploy my site...\033[0m"
git init &>/dev/null
git remote add live ssh://lcharlin@192.168.21.1:54221/var/repo/html.git &>/dev/null
git add index.html &>/dev/null
git commit -m "going live!" &>/dev/null
git push live master &>/dev/null
echo "\033[1;32mDone!\033[0m"
