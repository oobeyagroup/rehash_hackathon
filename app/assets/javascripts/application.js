// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
  background-image: url('/assets/low_contrast_linen.png');
	font-family: 'Oswald', sans-serif;
	padding: 40px;
}

header {
	text-align: center;
}

h1 {
	font-size: xx-large;
	color: #CCCCCC;
	text-transform: uppercase;
	text-shadow: 1px 1px 1px #000;
}

nav {
	text-align: center;
	font-size: large;
	color: #999999;
	margin-top: 15px;
	text-shadow: 0px -1px 0px rgba(0,0,0,.5);
}

h2 {
	text-align: center;
	font-size: x-large;
	margin-top: 20px;
	color: #CCCCCC;
	text-shadow: 1px 1px 1px #000;
}

a {
	color: #CCCCCC;
	text-decoration: none;
}

a:hover {
	color: #660000;
}

p {
	color: #000000;
	font-size: large;
	margin-top: 15px;
	text-shadow: 0px 1px 0px rgba(255,255,255,.5);
}

#notice {
	margin-top: 20px;
	color: green;
	text-align: center;
}

li {
	text-align: center;
	width: 520px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	padding: 20px;
	border-radius: 20px;

  /* Gradient */
  background: #eeeeee; /* Old browsers */
	background: -moz-linear-gradient(-45deg,  #eeeeee 0%, #595959 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#eeeeee), color-stop(100%,#595959)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* IE10+ */
	background: linear-gradient(135deg,  #eeeeee 0%,#595959 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#595959',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */

  /* Shadow */
	-webkit-box-shadow: 7px 7px 5px rgba(50, 50, 50, 0.9);
	-moz-box-shadow:    7px 7px 5px rgba(50, 50, 50, 0.9);
	box-shadow:         7px 7px 5px rgba(50, 50, 50, 0.9);
}

div {
	text-align: center;
	width: 520px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	padding: 20px;
	border-radius: 20px;

  /* Gradient */
  background: #eeeeee; /* Old browsers */
	background: -moz-linear-gradient(-45deg,  #eeeeee 0%, #595959 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#eeeeee), color-stop(100%,#595959)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(-45deg,  #eeeeee 0%,#595959 100%); /* IE10+ */
	background: linear-gradient(135deg,  #eeeeee 0%,#595959 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#595959',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */

  /* Shadow */
	-webkit-box-shadow: 7px 7px 5px rgba(50, 50, 50, 0.9);
	-moz-box-shadow:    7px 7px 5px rgba(50, 50, 50, 0.9);
	box-shadow:         7px 7px 5px rgba(50, 50, 50, 0.9);
}