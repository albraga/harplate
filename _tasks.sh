#!/bin/bash

PUBLIC="./public/"

function init {
mkdir -v "$PUBLIC""js"
cd "$PUBLIC""js"
wget "https://code.jquery.com/jquery-3.3.1.js"
wget "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
wget "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
touch main.js
# Open file descriptor (fd) 3 for read/write on a text file.
exec 3<> main.js
	# Let's print some text to fd 3
	echo "console.log('ok');" >&3
# Close fd 3
exec 3>&-
cd ..
mkdir -v css
cd css
touch main.css
/bin/cat <<EOM >main.css
hr {
    height: 2px;
    background-color:#555;
    margin-top: 20px;
    margin-bottom: 20px;
    width: 75%;
}
EOM
wget "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
cd ../..
}

function todocs {
cd $PUBLIC
rm _data.json
cp bkp_data.json _data.json
rm -rfv ../docs js css
mv ../www ../docs
rm -rfv js css img
rm -v *00.ejs *.html
cd ..
}

function toinitialcommit {
rm -rfv .git
git init
git add --all
git commit -m "to initial commit"
git remote add origin https://github.com/albraga/harplate.git
git push -u --force origin master
}

for argument in "$@"
do
case $argument in
	init)
		init
	;;
	todocs)
		todocs
	;;
	toinitialcommit)
		toinitialcommit
	;;
	test)
		init
		#harp compile
		#todocs
	;;
esac
done
