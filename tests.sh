./node_modules/.bin/testcafe remote --hostname localhost --ports 1337,1338 &
echo Start Browser
google-chrome --no-sandbox --headless --remote-debugging-port=9222 http://localhost:1337 &
node -e "require('chrome-remote-interface')().then(() => console.log('OK'))"
