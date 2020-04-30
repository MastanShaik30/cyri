git submodule foreach git pull origin master

git add .

git commit -m "updated all submodules to latest branch"

git origin push master
