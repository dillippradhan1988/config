HTML
-------------------------------------------------------------------------
1.Meta tag:
	The META tag provides information about the HTML Document.
	Used by the browsers (how to reload page,display content,search engines).

2.DOCTYPE:
	The doctype declaration is not an HTML tag; it is an instruction 
	to the web browser about what version of the markup language the page is written in.
	The doctype declaration refers to a Document Type Definition (DTD). 
	The DTD specifies the rules for the markup language, so that the browsers render the content correctly.
	
3.Attributes
	Attributes provide additional information about HTML elements.
	
4.Unouder list
	list-style-type:disc,list-style-type:circle,list-style-type:square,list-style-type:none

5.Ordered list
	A type attribute can be added to an ordered list, to define the type of the marker:
	type="1",type="A",type="a",type="I",type="i"
	
6.Block-level Elements
	A block-level element always starts on a new line and takes up the full width available 
	(stretches out to the left and right as far as it can).
	div,h1-h6,p,form
	
7.Inline Elements
	An inline element does not start on a new line and only takes up as much width as necessary.
	span,a,img
	
8.Responsive Web Design
	can be done by HTML5 CSS like w3-container,w3-row
	can be done by bootstrap like class are row , col-md-4
	
9.Iframe:
	An iframe is used to display a web page within a web page.<iframe src="URL"></iframe>

10.noscript
	The <noscript> tag is used to provide an alternate content for users that have disabled scripts in their browser 
	or have a browser that doesn't support client-side scripting.
	
11.HTML Character Entities
	Result	Description				Entity Name		Entity Number
		non-breaking space			&nbsp;				&#160;
	<	less than					&lt;				&#60;
	>	greater than				&gt;				&#62;
	&	ampersand					&amp;				&#38;
	¢	cent						&cent;				&#162;
	£	pound						&pound;				&#163;
	¥	yen							&yen;				&#165;
	€	euro						&euro;				&#8364;
	©	copyright					&copy;				&#169;
	®	registered trademark		&reg;				&#174;
	
12.HTML Encoding (Character Sets)
	To display an HTML page correctly, a web browser must know the character set (character encoding) to use.
	
13.XHTML
	XHTML stands for EXtensible HyperText Markup Language
	An XHTML document must have an XHTML DOCTYPE declaration.
	
	
	
CSS
-----------------------------------------------------------------------
14.Position
	Fixed:	
		An element with fixed position is positioned relative to the browser window.
	Relative:
		If you specify position: relative, then you can use top or bottom, and left or right to move 
		the element relative to where it would normally occur in the document.
	Absolute:
		When you specify position:absolute, the element is removed from the document and placed exactly where you tell it to go.
	Static
		The default positioning for all elements is position: static, which means the element is not positioned 
		and occurs where it normally would in the document.
		
15.clear both
	Elements after the floating element will flow around it. To avoid this, use the clear 
	
16.Cursor
	hand,text,help,wait,move
	
17:color
	a color is most often specified by:
		a HEX value - like "#ff0000"
		an RGB value - like "rgb(255,0,0)"		
		a color name - like "red"
18.Pseudo-class
	A CSS pseudo-class is used to style special state of an element.
	
18.Pseudo-Elements
	A CSS pseudo-element is used to style specified parts of an element.
	::first-line
	::first-letter
	::before
	::after
	
19.Image Sprites
	An image sprite is a collection of images put into a single image.
	
20.
	Content - The content of the box, where text and images appear
	Padding - Clears an area around the content. The padding is transparent
	Border - A border that goes around the padding and content
	Margin - Clears an area outside the border. The margin is transparent
	
21.Background
	CSS background properties are used to define the background effects of an element.
	background-color
	background-image
	background-repeat
	background-attachment
	background-position
	
	
Javascript
------------------------------------
JavaScript is an implementation of the ECMA-262 standard.

Function
	All functions return a value in JavaScript. In the absence of an explicit return statement, a function returns undefined.

Immediately Executing Function
	You can execute a function immediately after you define it. Simply wrap the function in parentheses () and invoke it,

	(function foo() {
		console.log('foo was executed!');
	})();

	The reason for having an immediately executing function is to create a new variable scope. An if, else, or while does not create a new variable scope in JavaScript.

Anonymous Function
	A function without a name is called an anonymous function. In JavaScript, you can assign a function to a variable.
	If you are going to use a function as a variable, you don’t need to name the function.

	var foo1 = function namedFunction() { 
		// no use of name, just wasted characters
		console.log('foo1');
	}
	foo1(); // foo1
 
	var foo2 = function () {
		// no function name given i.e. anonymous function
		console.log('foo2');
	}
	foo2(); // foo2

first-class functions
	A programming language is said to have first-class functions if a function can be treated the same way as any other
	variable in the language. JavaScript has first-class functions.

Higher-Order Functions
	Functions that take functions as arguments are called higher-order functions.

	setTimeout(function () {
		console.log('2000 milliseconds have passed since this demo started');
	}, 2000);

Closures
	Whenever we have a function defined inside another function, the inner function has access to the variables declared
	in the outer function.

substrring and substr
	substrring 	: 	start_index,end_index
	substr		:	start index,length (no of chracter)
	slice 		: 	start_index,end_index
	
	substring and substr gives same result if their start_index is only 0.

callback or handler
	callback are used for better control of request to server and response from server.
	A callback is a function that is passed as an argument to another function and is executed after its parent function has completed.
	
keydown event and keypress	
	keydown will fire first then keypress will fire

script attribute
	There are six attributes for the script element:
	async - Optional. 
	Valid only for external script files.	
	script should download immediately and should not prevent other actions on the page.
	
	charset - Optional. 
	This attribute is rarely used, because most browsers don't honor its value.
	The character set of the code specified using the src attribute.
	
	defer - Optional. 
	Valid only for external scripts.
	The execution can be deferred until after the document's content has been parsed and displayed.
	language - Deprecated.
	
	src - Optional. 
	Indicates an external file that contains code to be executed.
	
	type - Optional. 
	Replaces language attribute.
	Set the MIME type of the scripting language. 
	This attribute is safe to omit, as "text/javascript" is assumed when missing.
	
noscript element provides alternate content for browsers without JavaScript.

Using the var operator to define a variable makes it local to the scope where it was defined.

The value undefined is a derivative of null, so JavaScript defines them to be equal:

true is not equal to 1, and false is not equal to 0.

Boolean conversions are automatically perform in  flow-control statements, such as the if statement
	var message = "hi!";
	if (message){
	   console.log("Value is true");// output Value is true
	}
	
For an octal literal, the first digit must be a zero (0) followed by a sequence of octal digits (numbers 0 through 7).

To create a hexadecimal literal, you start the first two characters with 0x or 0X, followed by any number of hexadecimal digits (0 through 9, and A through F).

Any operation involving NaN always returns NaN. NaN is not equal to any value, including NaN.

	console.log(NaN /10); //NaN
	console.log(NaN == 0);  //false
	console.log(NaN == NaN);  //false

	if ("a" != NaN){
	   console.log("This is not a number");
	}else{
	   console.log("This is a number");
	}
	//This is not a number
	
When a value is passed into isNaN(), isNaN() tries to convert it into a number.
Some values convert into numbers directly, such as "10" or a Boolean value. For any value that cannot be converted into a number isNaN() returns true.

When there is no digit after the decimal point, the number becomes an integer

toString() on a number value accepts a single argument: the radix.
By passing in a radix, toString() can output the value in binary, octal, hexadecimal, or any other valid base:
	var num = 10;
	console.log(num.toString());       //"10"
	console.log(num.toString(2));      //"1010"
	console.log(num.toString(8));      //"12"
	console.log(num.toString(10));     //"10"
	console.log(num.toString(16));     //"a"
	
Because toString() isn't available on "null" and "undefined", the String() method simply returns literal text for those values.

typeof vs instanceof
	The typeof operator tells if a variable is a primitive type. It can determine if a variable is a string, number, Boolean, or undefined.
	
Arrays can be created in two ways.
	Array constructor			// var colors = new Array("red", "blue", "green");
	Array literal notation		//	var colors = ["red", "blue", "green"];
	
Array detecting
	We have two ways to check if a variable is an array.
		The first method is to use instanceof operator.
		The second one is to use Array.isArray() method.
		
push() && pop()
	The push() method accepts any number of arguments and adds them to the end of the array, returning the array's new length.
	The pop() method removes the last item in the array, decrements the array's length, and returns the removed item.
	
javascript search metho
	Javascript array has two methods for search: indexOf() and lastIndexOf().
	They both accept two arguments: the item to look for and an optional index from which to start looking.
	indexOf() searches from array start while lastIndexOf() searches from the last item and continues to the front.
	They will return the position of the item or -1 if the item isn't in the array.
	An identity comparison (===) is used during comparing.
	
Append function 
	var colors = ["A", "B", "C"];
	var colors2 = colors.concat("D", ["E", "F"]);
	console.log(colors);   //  	["A", "B", "C"]
	console.log(colors2);  //	["A", "B", "C", "D", "E", "F"]  
	
sub array function 
	The slice(), which gets the sub array, may accept one or two arguments: the starting and stopping positions.
	
Deletion
	We can use splice() to delete items from an array, by specifying the position of the first item to delete and the number of items to delete.
		var colors = ["A", "B", "C", "D", "E"]; 
		var colors2 = colors.splice(0,2); 
		console.log(colors); //C,D,E

Insertion
	We can use splice() to insert items to a specific position by providing three or more arguments: the starting position, 0 , and the items to insert.
		var colors = ["A", "B", "C", "D", "E"]; 
		var colors2 = colors.splice(2,0,"A","B","C");
		console.log(colors); //A,B,A,B,C,C,D,E
		
splice() can do delete and insert at the same time and result in an replacement action. 
You specify three arguments: the starting position, the number of items to delete, and any number of items to insert.

Date object
	var dt = new Date();								// 	constructor
	var dt = new Date(1234567890);						// 	timestamp
	var dt = new Date("May 25, 2004");					// 	date string
	var dt = Date.now();								//	now
	var dt = new Date(2005, 4, 5, 17, 55, 55);			//	date parts (y-m-d h:i:s ss)
	
sub string
	slice(), substr(), and substring() all three methods return a substring of the string. They do not alter the value of the string itself.

	They all accept either one or two arguments.
	The first argument is the position where capture of the substring begins.	
	The second argument, if used, indicates where the operation should stop. For slice() and 
	substring(), this second argument is the position before which capture is stopped. 
	For substr(), the second argument is the number of characters to return.	
	If the second argument is omitted, it is assumed that the ending position is the length of the string.	
	For the substring() method, all negative numbers are converted to 0. Consider this example:	
	For the slice() method, a negative argument is treated as the length of the string plus the negative argument.	
	For the substr() method, a negative first argument is treated as the length of the string plus the number, whereas a negative second number is converted to 0.

	var stringValue = "hello world";
	console.log(stringValue.slice(3));        //"lo world"
	console.log(stringValue.substring(3));    //"lo world"
	console.log(stringValue.substr(3));       //"lo world"
	console.log(stringValue.slice(3, 7));     //"lo w"
	console.log(stringValue.substring(3,7));  //"lo w"
	console.log(stringValue.substr(3, 7));    //"lo worl"
	//from  www . java 2s. c o  m
	console.log(stringValue.slice(-3));         //"rld"
	console.log(stringValue.substring(-3));     //"hello world"
	console.log(stringValue.substr(-3));        //"rld"
	console.log(stringValue.slice(3, -4));      //"lo w"
	console.log(stringValue.substring(3, -4));  //"hel"
	console.log(stringValue.substr(3, -4));     //"" (empty string)
	
String Case Methods
	Four methods perform case conversion: toLowerCase(), toLocaleLowerCase(), toUpperCase(), and toLocaleUpperCase().
	
search(),
	var text = "cat, bat, sat, fat";
	var pos = text.search(/at/);
	console.log(pos);   //1
replace()
	var text = "cat, hat, ate, fat";
	var result = text.replace("at", "aaa");
	
JSON Object
	The JSON object has two methods: stringify() and parse().
	stringify() methods serialize JavaScript objects into a JSON string. 
	parse() parses JSON into a native JavaScript value
	
Question: How to convert Object to String javascript?
	var myobject=['Web','Technology','Experts','Notes']
	JSON.stringify(myobject);

How to empty an array ?
	var a = [1,2,3,4];
	
	1.a = [];
	2.a.length = 0;
	3.a.splice(0,a.length);

23.callback or handler	
	A callback is a function that is passed as an argument to another function and is executed after its parent function has completed.
	
23.keydown event and keypress	
	keydown will fire first then keypress will fire

How to get no of days in a month ?	
	function daysInMonth(month,year) {
        return new Date(year, month, 0).getDate();
    }
    //February
    console.log(daysInMonth(0,2016)); //28
	
	
	
jQuery
-----------------------------------------	
When Jquery founded and by whom?
	Ans: It was released in January 2006 at BarCamp NYC by John Resig(Jquery founder).

jQuery
	jQuery is a fast and concise javascript library with following features.
	HTML element selections
	HTML element manipulation
	CSS manipulation
	HTML event functions
	Javascripts effects and animations
	HTML DOM traversal and modification
	AJAX
	
Ajax
	AJAX = Asynchronous Javascript and XML
	AJAX is a technique for creating fast and dynamic web pages and it is not a programming language
	AJAX is the art of exchanging data with a server and update parts of a web page without reloading the whole page
	
	AJAX States

		There is a 4 step approach for the browser to work with jQuery AJAX.

		    * Start the ajax request - ajaxStart(callback)
		    * Send ajax request to the server - ajaxSend(callback)
		    * Receive the data from the server through the handler(callback) - ajaxComplete(callback)
		    * Stop ajax request - ajaxStop(callback)
			
	Low level Ajax
		$.ajax({
			type: "POST",
			beforeSend: function(){
				alert('Sending request ...');
			},
			url: "some.php",
			data: "name=John & location = Boston",
			success: function(msg){
				alert("Data saved : "+msg);
			},
			complete: function(){
				alert('Ajax completed');
			},
			error: function(res){
				alert(res);
			}
		});
		Loads a remote page using an HTTP request		
		
Explain bind() vs live() vs delegate() methods.
	-The bind() method will not attach events to those elements which are added after DOM is loaded 
	while live() and delegate() methods attach events to the future elements also.
	
	-The difference between live() and delegate() methods is live() function will not work in chaining.
	It will work only on an selector or an element while delegate() method can work in chaining.
	
	.on(): Since live was deprecated with 1.7, so new method was introduced named ".on()". 
	This method provides all the goodness of previous 3 methods and it brings uniformity for attaching event handlers.
	
Explain .empty() vs .remove() vs .detach().
	-.empty() method is used to remove all the child elements from matched elements.
	-.remove() method is used to remove all the matched element. This method will remove all the jQuery data associated with the matched element.
	-.detach() method is same as .remove() method except that the .detach() method doesn’t remove jQuery data associated with the matched elements.
	-.remove() is faster than .empty() or .detach() method.
	
 What is the use of param() method.
	The param() method is used to represent an array or an object in serialize manner.
	While making an ajax request we can use these serialize values in the query strings of URL.
	Syntax: $.param(object | array, boolValue)
	“object | array” specifies an array or an object to be serialized.
	“boolValue” specifies whether to use the traditional style of param serialization or not.
	
 What is jQuery.holdReady() function?
	-By using jQuery.holdReady() function we can hold or release the execution of jQuery’s ready event.
	-This method should be call before we run ready event.
	-To delay the ready event, we have to call

slideToggle([ duration] [, easing] [, callback])
	“duration” is the number specifying how long the animation will run.
	“easing” is the string which specify the function for the transition.
	“callback” is the function which we want to run once the animation is complete.
	If the element is visible then this effect will slide the element up side and make it completely hidden. If the element is hidden then slideToggle() effect will slide it down side and make it visible.
	We can specify the toggle speed with this effect.	

 Is window.onload is different from document.ready()?
	- The window.onload() is Java script function and document.ready() is jQuery event which are called when page is loaded.
	- The difference is that document.ready() is called after the DOM is loaded without waiting for all the contents to get loaded. While window.onload() function waits until the contents of page is loaded.
	- Suppose there is very large image on a page, at that time window.onload() will wait until that image is loaded totally.
	- So while using the window.onlaod() function the execution will be slow, but the document.ready() will not wait until the image is loaded.
	
What is difference between prop and attr?
	In jQuery both prop() and attr() function is used to set/get the value of specified property of an element.
	The difference in both the function is that attr() returns the default value of the property while the prop() returns the current value of the property.
	
	For example
	<input value="My Value" type="text"/> 
	$('input').prop('value', 'Changed Value');
	
	-.attr('value') will return 'My Value' 
	-.prop('value') will return 'Changed Value'
	
Question: How to modify the URL without reloading the page?
	use pushState javascript function. 
	window.history.pushState('page2', 'This is page Title', '/newpage.php');
	
With use of below, you can easily determine whether it is object OR NULL.
	console.log(typeof(null));      // object
	console.log(typeof(undefined)); // undefined
	
Q-8).What are the fastest selectors in Jquery?
	Ans: ID and element selectors are the fastest selectors
	
Q-9).What are the slower selecoters in Jquery?
	Ans: Class selectors are slower
	
Is it possible to use other client side libraries like MooTools, Prototype along with jQuery?
	Ans: Yes.
	
What is the difference between $('div') and $('<div/>') in jQuery?
	Ans: $('<div/>') : This creates a new div element. However this is not added to DOM tree unless you don't append it to any DOM element.
	$('div') : This selects all the div element present on the page.
	
What is the difference between parent() and parents() methods in jQuery?
	Ans: The basic difference is the parent() function travels only one level in the DOM tree, where parents() function
	search through the whole DOM tree.
	
What is the difference between event.PreventDefault and event.stopPropagation?
	Ans: event.preventDefault(): Stops the default action of an element from happening.
	event.stopPropagation(): Prevents the event from bubbling up the DOM tree, 
	preventing any parent handlers from being notified of the event.
	For example, if there is a link with a click method attached inside of a DIV or FORM 
	that also has a click method attached, it will prevent the DIV or FORM click method from firing.
 
What is the difference between event.PreventDefault and "return false"?
	Ans: e.preventDefault() will prevent the default event from occurring, 
	e.stopPropagation() will prevent the event from bubbling up from DOM and 
	return false will do both.
	
What is the difference between event.stopPropagation and event.stopImmediatePropagation?
	Ans: event.stopPropagation() allows other handlers on the same element to be executed, 
	while event.stopImmediatePropagation() prevents every event from running. For example,
	see below jQuery code block.
 
Does events are also copied when you clone any element in jQuery?
	Ans: As explained in previous question, using clone() method, we can create clone of any element but the default 
	implementation of the clone() method doesn't copy events unless you tell the clone() method to copy the events.
	The clone() method takes a parameter, if you pass true then it will copy the events as well.
	Hide   Copy Code
	$(document).ready(function(){
	   $("#btnClone").bind('click', function(){
		 $('#dvClickme').clone(true).appendTo('body');
	  });

What is the difference between eq() and get() methods in jQuery?
	Ans: eq() returns the element as a jQuery object. This method constructs a new jQuery object from one element within that set and returns it. That means that you can use jQuery functions on it.
	get() return a DOM element. The method retrieve the DOM elements matched by the jQuery object. But as it is a DOM element and it is not a jQuery-wrapped object. So jQuery functions can't be used. Find out more here.
	
What are source maps in jQuery?
	Ans: In case of jQuery, Source Map is nothing but mapping of minified version of jQuery against the un-minified version. 
	Source map allows to debug minified version of jQuery library. Source map feature was release with jQuery 1.9. Find out more here.
	
What are deferred and promise object in jQuery?
	Ans: Deferred and promise are part of jQuery since version 1.5 and they help in handling asynchronous functions like Ajax. Find out more here.
	
What is a CDN?
	Ans: A content delivery network or content distribution network (CDN) is a large distributed system of servers 
	deployed in multiple data centers across the Internet. The goal of a CDN is to serve content to end-users with high 
	availability and high performance.
	
(selector).animate({styles},speed,easing,callback)
	styles: Specifies one or more CSS properties/values to animate.
	duration: Optional. Specifies the speed of the animation.
	easing: Optional. Specifies the speed of the element in different points of the animation. Default value is "swing".
	callback: Optional. A function to be executed after the animation completes.
	
slideToggle([ duration] [, easing] [, callback])
	“duration” is the number specifying how long the animation will run.
	“easing” is the string which specify the function for the transition.
	“callback” is the function which we want to run once the animation is complete.
	If the element is visible then this effect will slide the element up side and make it completely hidden. If the element is hidden then slideToggle() effect will slide it down side and make it visible.
	We can specify the toggle speed with this effect.
	
Traversing or filtering:children(),closest(),each(),end(),eq(),first(),find(),is(),last(),map(),next(),parent()
Manipulation:addClass(),after(),append(),attr(),before(),prepend(),css(),html()
Selectors:id,class,element,all,header,image,
Effect:animate(),delay(),fadeIn(),fadeOut(),fadeTo(),fadeToggle(),finish()
Events:blur(),change(),click(),dblclick(),focus()
		

MySQL
----------------------------------------------------
	9.ALTER :-
	Syntax :-
	ALTER [IGNORE] TABLE tbl_name alter_specification [, alter_specification] ...

	alter_specification:-
	ADD [COLUMN] col_name column_definition 
	CHANGE [COLUMN] old_col_name new_col_name column_definition
	MODIFY [COLUMN] col_name column_definition 
	DROP [COLUMN] col_name


	DELETE:-

	Syntax:-
	DELETE alias1,alias2 FROM table_name alias1 INNER JOIN table_name alias2 ON condition.

	Example:-
	DELETE t3,t4 FROM test3 t3 INNER JOIN test4 t4 ON t3.par_id=t4.id;

	UPDATE:-

	Syntax:-
	UPDATE table_name alias1 INNER JOIN table_name alias2 ON condition SET alias1.column_name = value , alias2.column_name=value;

	Example:-
	UPDATE test3 AS t3 INNER JOIN test4 AS t4 ON t3.par_id=t4.id SET t3.name = 'AFIXI TECHNOLOGY', t4.address = 'NEW M1 IT ZONE,PATIA';


	Specifier	Description
	%a	Abbreviated weekday name (Sun..Sat)
	%b	Abbreviated month name (Jan..Dec)
	%c	Month, numeric (0..12)
	%D	Day of the month with English suffix (0th, 1st, 2nd …)
	%e	Day of the month, numeric (0..31)
	%H	Hour (00..23)
	%h	Hour (01..12)
	%I	Hour (01..12)
	%i	Minutes, numeric (00..59)
	%M	Month name (January..December)
	%m	Month, numeric (00..12)
	%p	AM or PM
	%Y	Year, numeric, four digits
	%y	Year, numeric (two digits)

	We can copy all columns into the new table:

	SELECT *
	INTO newtable [IN externaldb]
	FROM table1;
	Or we can copy only the columns we want into the new table:

	SELECT column_name(s)
	INTO newtable [IN externaldb]
	FROM table1;



	We can copy all columns from one table to another, existing table:

	INSERT INTO table2
	SELECT * FROM table1;
	Or we can copy only the columns we want to into another, existing table:

	INSERT INTO table2
	(column_name(s))
	SELECT column_name(s)
	FROM table1;
BH1068672716715

Questions : 20	How can we encrypt and decrypt a data present in a MySQL table
using MySQL?
	AES_ENCRYPT () and AES_DECRYPT ()

PHP 
----------------------------------------
The most common media type for POST bodies is
application/x-www-form-urlencoded , which is simply encoded name/value pairs
multipart/form-data     file upload
application/json		ajax request
separated by ampersands

It’s very important that you use a 303 (or 302) redirect, not a 301
redirect in this instance. 301 redirects are “permanent,” meaning your
browser may cache the redirection destination. If you use a 301 redi‐
rect and try to submit the form a second time, your browser may
bypass the /process handler altogether and go directly to /thank-
you since it correctly believes the redirect to be permanent. The 303
redirect, on the other hand, tells your browser “Yes, your request is
valid, and you can find your response here,” and does not cache the
redirect destination.

cookie
	The idea of a cookie is simple: the server sends a bit of information, and the browser
	stores it for some configurable period of time. It’s really up to the server what the par‐
	ticular bit of information is: often it’s just a unique ID number that identifies a specific
	browser so that the illusion of state can be maintained.

session
	PHP Engine creates a logical object to preserve data across subsequent HTTP requests, which is known as session.



The following are the most commonly used Representational State Transfer (REST)
  server architecture HTTP methods and their counterpart methods in Express.js along
  with the brief meaning:

	1.GET: app.get()—Retrieves an entity or a list of entities

	2.HEAD: app.head()—Same as GET, only without the body

	3.POST: app.post()—Submits a new entity

	4.PUT: app.put()—Updates an entity by complete replacement

	5.PATCH: app.patch()—Updates an entity partially

	6.DELETE: app.delete() and app.del()—Deletes an
	  existing entity

	7.OPTIONS: app.options()—Retrieves the capabilities of
	  the server

REST
--------------------------------------------------------------------------------------------------
The acronym REST stands for “representational state transfer,” and the grammatically
troubling “RESTful” is used as an adjective to describe a web service that satisfies the
principles of REST.

REST is a stateless connection between a client and a server

REST also specifies that the service can be cached and that services can be layered 
(that is, when you use a REST API, there may be other REST APIs beneath it).

Cross-Origin Resource Sharing (CORS)
	same-origin policy, which restricts where scripts can be loaded from. Specifically, 
	the protocol, domain, and port must match.

	CORS is implemented through the Access-Control-Allow-Origin header.

cal_days_in_month ( int $calendar , int $month , int $year )
	$number = cal_days_in_month(CAL_GREGORIAN, 8, 2003); // 31	
	
Representational state transfer (REST) 
	is a software system for distributing the data to different kind of applications. The web service system produce status code response in JSON or XML format.

str_word_count
	used for counting no of word in a senetence.
array_flip()
	Returns an array in flip order, i.e. keys from become values and values become keys.
	
date_default_timezone_set("America/New_York");
PHP was conceived in 1994,developed by Rasmus Lerdorf but php 5.0 version developed in 2004 aug

Question: What is use of header() function in php?
	1. Header is used to redirect from current page to another:
	header("Location: newpage.php");

	2. Header is used to send HTTP status code.
	header("HTTP/1.0 404 Not Found");

	3. Header is used to send Send a raw HTTP header
	header('Content-Type: application/pdf');
	
Question: What type of inheritance supports by PHP?
	There are following type of inheritance 
	Single Inheritance - Support by PHP
	Multiple Inheritance - Not support
	Hierarchical Inheritance - Support by PHP
	Multilevel Inheritance - Support by PHP
	
Question: What are default session time and path?
	Session Time: 1440 seconds
	Session Path: /tmp folder in server
	
Question: What is PEAR?
	PHP Extension and Application Repository (PEAR) is a framework and repository for reusable PHP components.

Question: What is MIME?
	Full form of MIME is "Multi-purpose Internet Mail Extensions".
	It is extension of e-mail protocol helps to exchanges the different kids of data files over the internet. 
	Data files may be audio, video, images, application programs and ASCII etc.
	
Question:What is CRUD
	create,retrive,update,delete

Question: How can i execute PHP File using Command Line?
	For this, you need PHP CLI(Commnd line interface)
	php E://wamp/www/project/myfile.php

Question: What are different type of sorting functions in PHP?
	sort() - sort arrays in ascending order. 
	asort() - sort associative arrays in ascending order, according to the value.
	ksort() - sort associative arrays in ascending order, according to the key.	
	
	rsort() - sort arrays in descending order.
	arsort() - sort associative arrays in descending order, according to the value.	
	krsort() - sort associative arrays in descending order, according to the key.
	
	array_multisort() - sort the multi dimension array.
	usort()- Sort the array using user defined function.
	
Question: How to save the session data into database?
	To maintain the session data, we can use session_set_save_handler function.
	
Questions : 14	Suppose your Zend engine supports the mode <? ?> Then how can u
	configure your PHP Zend engine to support <?PHP ?> mode ?
	In php.ini file: set short_open_tag=on to make PHP support
	


Questions : What are the differences between public, private, protected,
static, transient, final and volatile?
	Public: Public declared items can be accessed everywhere.
	Protected: Protected limits access to inherited and parent
	classes (and to the class that defines the item).
	Private: Private limits visibility only to the class that defines
	the item.
	Static: A static variable exists only in a local function scope,
	but it does not lose its value when program execution leaves this scope.
	Final: Final keyword prevents child classes from overriding a
	method by prefixing the definition with final. If the class itself is
	being defined final then it cannot be extended.
	transient: A transient variable is a variable that may not
	be serialized. 
	volatile: a variable that might be concurrently modified by multiple
	threads should be declared volatile. Variables declared to be volatile
	will not be optimized by the compiler because their value can change at
	any time.
	
What is the difference between htmlentities() and htmlspecialchars()?
	htmlspecialchars() – Convert some special characters to HTML entities (Only the most widely used)
	htmlentities() – Convert ALL special characters to HTML entities
	
Questions : 33	What is meant by urlencode and urldocode?
	Answer : 33	URLencode returns a string in which all non-alphanumeric characters
	except -_. have been replaced with a percent (%)
	sign followed by two hex digits and spaces encoded as plus (+)
	signs. It is encoded the same way that the posted data from a WWW form
	is encoded, that is the same way as in 
	application/x-www-form-urlencoded media type.
	urldecode decodes any %##
	encoding in the given string.
	
Questions : 36	How can we get the properties (size, type, width, height) of an
image using PHP image functions?
	Answer : 36	To know the Image type use exif_imagetype () function
	To know the Image size use getimagesize () function
	To know the image width use imagesx () function
	To know the image height use imagesy() function t
	
Questions : 55	What are the difference between abstract class and interface?
	Answer : 55	Abstract class: abstract classes are the class where one or more
	methods are abstract but not necessarily all method has to be abstract.
	Abstract methods are the methods, which are declare in its class but not
	define. The definition of those methods must be in its extending class.Interface: Interfaces are one type of class where all the methods are
	abstract. That means all the methods only declared but not defined. All
	the methods must be define by its implemented class.
	
Questions : 59	What is the maximum length of a table name, database name, and
fieldname in MySQL?
	Answer : 59	The following table describes the maximum length for each type of
	identifier.
	Identifier	Maximum Length
	(bytes)
	Database	64
	Table	64
	Column	64
	Index	64
	Alias	255
	
Questions : 60	How many values can the SET function of MySQL take?
	Answer : 60	MySQL set can take zero or more values but at the maximum it can
	take 64 values
	
Questions : 96	what is MVC? why its been used?
	Answers : 96	 Model-view-controller (MVC) is an architectural pattern used in software engineering. 

	In MVC, the model represents the information (the data) of the application; 

	the view corresponds to elements of the user interface such as text, checkbox items, and so forth; and the 

	controller manages the communication of data and the business rules used to manipulate the data to and from the model. 

	WHY ITS NEEDED IS 1
		Modular approach
		debugging easy
		maintencae
		security

HTTP status code
	5 types of code are there
	1xx Informational 
		Request received, continuing process.

		100 Continue
		101 Switching Protocols
		102 Processing

	2xx Success
		This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully

		200 OK
		201 Created
		202 Accepted

	3xx Redirection
		This class of status code indicates the client must take additional action to complete the request.

		301 Moved Permanently
		302 Found
		307 Temporary Redirect 
		308 Permanent Redirect

	4xx Client Error
		The 4xx class of status code is intended for situations in which the client seems to have erred.

		400 Bad Request
		401 Unauthorized
		403 Forbidden
		404 Not Found
		405 Method Not Allowed
		408 Request Timeout

	5xx Server Error
		The 5xx class of status code deals with server is aware that it has encountered an error or is otherwise incapable of performing the request. 

		500 Internal Server Error
		502 Bad Gateway
		503 Service Unavailable

	
Questions : 98	what is CURL?
	CURL means Client URL Library
	curl is a command line tool for transferring files with URL syntax, supporting FTP, FTPS, HTTP, HTTPS, SCP, SFTP, TFTP, TELNET, DICT,
	LDAP, LDAPS and FILE. curl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP form based upload, proxies, cookies, 
	user+password authentication (Basic, Digest, NTLM, Negotiate, kerberosâ€¦), file transfer resume, proxy tunneling and a busload of other 
	useful tricks.
	CURL allows you to connect and communicate to many different types of servers with many different types of protocols. 
	libcurl currently supports the http, https, ftp, gopher, telnet, dict, file, and ldap protocols. 
	libcurl also supports HTTPS certificates, HTTP POST, HTTP PUT, FTP uploading (this can also be done with PHPâ€™s ftp extension),
	HTTP form based upload, proxies, cookies, and user+password authentication.
	
Questions : 99	what is PDO ?	
	The PDO ( PHP Data Objects ) extension defines a lightweight, consistent interface for accessing databases in PHP. 
	if you are using the PDO API, you could switch the database server you used, from say PgSQL to MySQL, 
	and only need to make minor changes to your PHP code.
	
Questions : 100	What is PHP's mysqli Extension?	
	The mysqli extension, or as it is sometimes known, the MySQL improved extension, was developed to take advantage of 
	new features found in MySQL systems versions 4.1.3 and newer. The mysqli extension is included with PHP versions 5 and later.
	
Q. What are magic functions or methods in php?
	The function names __construct(), __destruct(), __call(), __callStatic(), __get(), 
	__set(), __isset(), __unset(), __sleep(), __wakeup(), __toString(), __invoke(), 
	__set_state() and __clone() are magical in PHP classes.
	
What is the difference between CHAR AND VARCHAR?
	The CHAR and VARCHAR types are similar, but differ in the way they are stored and retrieved.
	The length of a CHAR column is fixed to the length that you declare when you create the table.
	The length can be any value between 1 and 255. When CHAR values are stored, they are right-padded with spaces to the specified length. When CHAR values are retrieved, trailing spaces are removed.
	
 How do you change a password for an existing user via mysqladmin?
	mysqladmin -u root -p password “newpassword”
	
Do you know about Cross site Scripting ?
	Cross-site scripting (XSS) is a security exploit in which the attacker inserts malicious coding into an link that
	appears to be from a trustworthy	

Questions : 62	How many tables will create when we create table, what are they?
	Answer : 62	The '.frm' file stores the table definition.
	The data file has a '.MYD' (MYData) extension.
	The index file has a '.MYI' (MYIndex) extension,
 
How many types of buffers does use MySQL?
	Global buffers and per-connection buffers
	
How many values can the SET function of MySQL take?
	MySQL SET function can take zero or more values, but at the maximum it can take 64 values.
	
What is Apache?
	The most widely available HTTP server on the Internet. It supports the PERL and PHP languages.
	
what are the most common caching policy approaches ?
	1)Time triggered caching (expiry timestamp).
	2)Content change triggered caching (sensitive content has changed, so cache must be updated).
	3)Manually triggered caching (man
	
How do I find out the number of parameters passed into function9. ?
	func_num_args() function returns the number of parameters passed in.
	
What’s the special meaning of __sleep and __wakeup?
	__sleep returns the array of all the variables than need to be saved, while __wakeup retrieves them.
	
What is the difference between characters 23 and \x23?
	The first one is octal 23, the second is hex 23.
	
How many ways we can pass the variable through the navigation between the pages?
	At least 3 ways:
	1. Put the variable into session in the first page, and get it back from session in the next page.
	2. Put the variable into cookie in the first page, and get it back from the cookie in the next page.
	3. Put the variable into a hidden form field, and get it back from the form in the next page.
	
How many values can the SET function of MySQL take?
	MySQL SET function can take zero or more values, but at the maximum it can take 64 values.
	
What is meant by nl2br()?

	nl2br() inserts a HTML tag <br> before all new line characters \n in a string.

	echo nl2br(”god bless \n you”);
	output:
	god bless<br>
	you
	
What are the functions for IMAP?
	imap_body – Read the message body
	imap_check – Check current mailbox
	imap_delete – Mark a message for deletion from current mailbox
	imap_mail – Send an email message
	
What are the features and advantages of OBJECT ORIENTED PROGRAMMING?
	One of the main advantages of OO programming is its ease of modification; objects can easily be modified and added 
	to a system there by reducing maintenance costs. OO programming is also considered to be better at modeling the real 
	world than is procedural programming. It allows for more complicated and flexible interactions. OO systems are also easier 
	for non-technical personnel to understand and easier for them to participate in the maintenance and enhancement of a system because 
	it appeals to natural human cognition patterns. 
	
// Set the default timezone to Tokyo time:
	date_default_timezone_set('Asia/Tokyo');

Increase Import File size
	post_max_size
	upload_max_filesize

OOPS
----------
Object based programming language follows all the features of OOPs except Inheritance. JavaScript and VBScript are examples of object based programming languages.

Inheritance
Polymorphism
Abstraction
Encapsulation



