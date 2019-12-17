echo 'creating symlinks to to default vscode destination on mac'
cd vscode
ls
for f in *
do 
    rm -rf ~/Library/Application\ Support/Code/User/$f
    ln -s $(pwd)/$f ~/Library/Application\ Support/Code/User/$f
done
cd ..

