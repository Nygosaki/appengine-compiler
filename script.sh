#! /usr/bin/bash
cd /home/nygosaki
rm -r -f portfolio-site
git clone https://github.com/Nygosaki/portfolio-site.git
cd portfolio-site/
npm i
npm audit fix
npm run build
rm -r -f public
rm -r -f src
rm -r -f node_modules
rm -f README.md
rm -f package.json
rm -f package-lock.json
cp ../app.yaml app.yaml
gcloud app deploy