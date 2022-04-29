cd berty/tool/game-utils/bundler
./bundler.js ../../../../src/index.html
mv game.html.gz game-dir
cd ../pkg-validator
./validator.js ../bundler/game-dir
cd ../game-dev-app/games
rm -rf flappybat
cp -r ../../bundler/game-dir flappybat
cd ..
make ios
