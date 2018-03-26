#!/bin/bash

PUBLIC="./public/"

function getholderjs {
cd "$PUBLIC""js"
if [ ! -f holder.min.js ]; then
    wget "https://raw.githubusercontent.com/imsky/holder/master/holder.min.js"
fi
cd ../..
}

function jumbotron00 {
cd $PUBLIC
NAME=${FUNCNAME[0]}
touch $NAME.ejs
FILE=$NAME.ejs
/bin/cat <<EOM >$FILE
<main role="main">
	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">one minute!</h1>
		</div>
	</div>
</main>
EOM
#remove the last line
sed -i '$ d' _data.json
#change the last line of _data.json
sed -i "\$s/}/},\n \"$NAME\": {\n   \"pageTitle\": \"$NAME\"\n }\n}/" _data.json
cd ..
}

function alerts00 {
cd $PUBLIC
NAME=${FUNCNAME[0]}
touch $NAME.ejs
FILE=$NAME.ejs
/bin/cat <<EOM >$FILE
<div class="alert alert-primary" role="alert">
  This is a primary alert—check it out!
</div>
<div class="alert alert-secondary" role="alert">
  This is a secondary alert—check it out!
</div>
<div class="alert alert-success" role="alert">
  This is a success alert—check it out!
</div>
<div class="alert alert-danger" role="alert">
  This is a danger alert—check it out!
</div>
<div class="alert alert-warning" role="alert">
  This is a warning alert—check it out!
</div>
<div class="alert alert-info" role="alert">
  This is a info alert—check it out!
</div>
<div class="alert alert-light" role="alert">
  This is a light alert—check it out!
</div>
<div class="alert alert-dark" role="alert">
  This is a dark alert—check it out!
</div>
<hr>
<div class="alert alert-primary" role="alert">
  This is a primary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-secondary" role="alert">
  This is a secondary alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-success" role="alert">
  This is a success alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-danger" role="alert">
  This is a danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-warning" role="alert">
  This is a warning alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-info" role="alert">
  This is a info alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-light" role="alert">
  This is a light alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-dark" role="alert">
  This is a dark alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<hr>
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Well done!</h4>
  <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
  <hr>
  <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
</div>
<hr>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Holy guacamole!</strong> You should check in on some of those fields below.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
EOM
#remove the last line
sed -i '$ d' _data.json
#remove the new last line
sed -i '$ d' _data.json
#add second-to-last and last lines
echo -e "  },\n 	\"$NAME\": {\n   	\"pageTitle\": \"$NAME\"\n  }\n}" >> _data.json
cd ..
}

function badges00 {
cd public
NAME=${FUNCNAME[0]}
touch $NAME.ejs
FILE=$NAME.ejs
/bin/cat <<EOM >$FILE
<h1>Example heading <span class="badge badge-secondary">New</span></h1>
<h2>Example heading <span class="badge badge-secondary">New</span></h2>
<h3>Example heading <span class="badge badge-secondary">New</span></h3>
<h4>Example heading <span class="badge badge-secondary">New</span></h4>
<h5>Example heading <span class="badge badge-secondary">New</span></h5>
<h6>Example heading <span class="badge badge-secondary">New</span></h6>
<hr>
<button type="button" class="btn btn-primary">
  Notifications <span class="badge badge-light">4</span>
</button>
<hr>
<button type="button" class="btn btn-primary">
  Profile <span class="badge badge-light">9</span>
  <span class="sr-only">unread messages</span>
</button>
<hr>
<span class="badge badge-primary">Primary</span>
<span class="badge badge-secondary">Secondary</span>
<span class="badge badge-success">Success</span>
<span class="badge badge-danger">Danger</span>
<span class="badge badge-warning">Warning</span>
<span class="badge badge-info">Info</span>
<span class="badge badge-light">Light</span>
<span class="badge badge-dark">Dark</span>
<span class="badge badge-pill badge-primary">Primary</span>
<span class="badge badge-pill badge-secondary">Secondary</span>
<span class="badge badge-pill badge-success">Success</span>
<span class="badge badge-pill badge-danger">Danger</span>
<span class="badge badge-pill badge-warning">Warning</span>
<span class="badge badge-pill badge-info">Info</span>
<span class="badge badge-pill badge-light">Light</span>
<span class="badge badge-pill badge-dark">Dark</span>
<hr>
<a href="#" class="badge badge-primary">Primary</a>
<a href="#" class="badge badge-secondary">Secondary</a>
<a href="#" class="badge badge-success">Success</a>
<a href="#" class="badge badge-danger">Danger</a>
<a href="#" class="badge badge-warning">Warning</a>
<a href="#" class="badge badge-info">Info</a>
<a href="#" class="badge badge-light">Light</a>
<a href="#" class="badge badge-dark">Dark</a>
EOM
#remove the last line
sed -i '$ d' _data.json
#change the last line of _data.json
sed -i "\$s/}/},\n \"$NAME\": {\n   \"pageTitle\": \"$NAME\"\n }\n}/" _data.json
cd ..
}

function breadcrumbs00 {
cd $PUBLIC
NAME=${FUNCNAME[0]}
touch $NAME.ejs
FILE=$NAME.ejs
/bin/cat <<EOM >$FILE
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Home</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Library</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item"><a href="#">Library</a></li>
    <li class="breadcrumb-item active" aria-current="page">Data</li>
  </ol>
</nav>
EOM
#remove the last line
sed -i '$ d' _data.json
#remove the new last line
sed -i '$ d' _data.json
#add second-to-last and last lines
echo -e "  },\n 	\"$NAME\": {\n   	\"pageTitle\": \"$NAME\"\n  }\n}" >> _data.json
cd ..
}

for argument in "$@"
do
case $argument in
	jumbotron)
		jumbotron00
	;;
	alerts)
		alerts00
	;;
	badges)
		badges00
	;;
	breadcrumbs)
		breadcrumbs00
	;;
	test)
		jumbotron00
		alerts00
		badges00
		breadcrumbs
	;;
esac
done
