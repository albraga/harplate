#!/bin/bash

PUBLIC="./public/"

function getholderjs {
cd "$PUBLIC""js"
if [ ! -f holder.min.js ]; then
    wget "https://raw.githubusercontent.com/imsky/holder/master/holder.min.js"
fi
cd ../..
}

function album {
NAME=${FUNCNAME[0]}
cp _templates/$NAME/$NAME.css "$PUBLIC""css"
cp _templates/$NAME/$NAME.html $PUBLIC
getholderjs
}

function blog {
NAME=${FUNCNAME[0]}
cp _templates/$NAME/$NAME.css "$PUBLIC""css"
cp _templates/$NAME/$NAME.html $PUBLIC
getholderjs
}

function carousel {
NAME=${FUNCNAME[0]}
cp _templates/$NAME/$NAME.css "$PUBLIC""css"
cp _templates/$NAME/$NAME.html $PUBLIC
getholderjs
}

function checkout {
NAME=${FUNCNAME[0]}
cp _templates/$NAME/$NAME.css "$PUBLIC""css"
cp _templates/$NAME/$NAME.html $PUBLIC
}

for argument in "$@"
do
case $argument in
	album)
		album
	;;
	blog)
		blog
	;;
	carousel)
		carousel
	;;
	checkout)
		checkout
	;;
	test)
		album
		blog
		carousel
		checkout
	;;
esac
done
