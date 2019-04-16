chmod +x /home/circleci/project/chrome.sh
./node_modules/.bin/testcafe -v
./node_modules/.bin/testcafe "chrome:/home/circleci/project/chrome.sh:headless --disable-setuid-sandbox --no-sandbox  --disable-features=VizDisplayCompositor" --hostname localhost --ports 1337,1338 &
sleep 5

echo Start Browser
# firefox -headless http://localhost:1337/browser/connect &
#google-chrome --headless --remote-debugging-port=9222 http://localhost:1337/browser/connect &
ps -ejf | grep chrome
sleep 15
cat log.txt
# node -e "require('chrome-remote-interface')().then(() => console.log('OK'))"
