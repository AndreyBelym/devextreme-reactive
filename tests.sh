./node_modules/.bin/testcafe -v
./node_modules/.bin/testcafe remote ./tests/**/*-testcafe.js --hostname localhost --ports 1337,1338 &
yarn run build:watch &
sleep 60
echo Start Browser
# firefox -headless http://localhost:1337/browser/connect &
google-chrome --no-sandbox --headless --remote-debugging-port=9222 http://localhost:1337/browser/connect &
wait %1
# node -e "require('chrome-remote-interface')().then(() => console.log('OK'))"
