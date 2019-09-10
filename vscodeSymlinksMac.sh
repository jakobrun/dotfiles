echo 'creating symlinks to to default vscode destination on mac'
cd vscode
for f in *
do ln -s $(pwd)/$f ~/Library/Application\ Support/Code/User/$f
done
cd ..

