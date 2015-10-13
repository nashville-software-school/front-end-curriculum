# Colored reindeer exercise

1. Create a new directory in your exercises folder named `reindeer`.
1. Create an HTML file, and a JavaScript file.
1. Link the JavaScript file into your HTML file.

Paste the following code into the `<body>` of the HTML file.

```
<div id="reindeer">
</div>
```

Paste the following code into your JavaScript file.


```
var colors = ["Blue", "Red", "Orange", "Purple", "Hazel", "Aquamarine", "Periwinkle", "Azure", "Fuchsia", "Chocolate", "Amber", "Amaranth"];
var reindeer = ["Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"];


var hohohoElement = document.getElementById("coloredReindeer");
```

#Your assignment

Loop through all the reindeer in the array, and add the name of the reindeer to the single HTML `<div>` element provided. The name of the reindeer should be prepended with the corresponding color from the other array.

For example:

* Blue Dasher
* Red Dancer
* etc...

