./node_modules/.bin/testcafe -v
./node_modules/.bin/testcafe "chrome:headless --disable-setuid-sandbox --no-sandbox" --hostname localhost --ports 1337,1338 &
sleep 5

echo Start Browser
# firefox -headless http://localhost:1337/browser/connect &
#google-chrome --headless --remote-debugging-port=9222 http://localhost:1337/browser/connect &
ps -ejf | grep chrome
wait %1
# node -e "require('chrome-remote-interface')().then(() => console.log('OK'))"
