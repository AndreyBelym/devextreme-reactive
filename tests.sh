./node_modules/.bin/testcafe remote --hostname localhost --ports 1337,1338 &
sleep 10
echo Start Browser
google-chrome --no-sandbox --headless --remote-debugging-port=9222 http://localhost:1337/browser/connect &
wait 1
# node -e "require('chrome-remote-interface')().then(() => console.log('OK'))"
