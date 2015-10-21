# Introduction to jQuery

jQuery is about to make your life a bit easier as a developer. You've learned how to do some amazing things with vanilla JavaScript, which you will continue to use, but jQuery can make some of the more complex tasks simple.

jQuery came on to the scene in the late 2000's and got adopted with lightning speed, as it allowed front end developers to write a single line of code and have it work in all the major browsers, which at that point had enough differences in how the DOM was rendered that it was a non-trivial task to write code that worked between them.

At its core, jQuery allows a developer to quickly obtain references to DOM elements, like you've been doing with `getElementById` and `getElementsByClassName`, and then update the content of those elements. You've been using `innerHTML`, and `appendChild` and `removeChild` and other related vanilla JavaScript methods, but jQuery makes the syntax much more concise.

## Introduction

> **Term:** CDN is an acronym for Content Delivery Network which is a way for companies to distribute their code throughout the globe to strategic points, so that downloads are faster.

1. Create the directory `/vagrant/jquery` and create an `index.html` file and a `script.js` file and link them together.
1. Visit the [jQuery download page](https://jquery.com/download/#using-jquery-with-a-cdn) where you can copy the first line of code in that section. You do not need the one with the word `migrate` in it.
1. Paste that into your HTML file above the script tag to your JavaScript file.
1. Open your `script.js` file and add the following code
  ```js
  $(document).onready(function() {
    // All the JavaScript that depends on jQuery will be written here
  });
  ```

## DOM manipulation

### Selecting and reading contents of DOM elements

Now you can write your first, simple jQuery code. In your DOM create the following element.

```html
<article class="article--main" id="top-article">
  This is the very first article in my document.
</article>
```

Now in `script.js`, select the DOM element. Selectors in jQuery are **exactly** like CSS selectors - `#` for id, and `.` for class.

```js
$(document).onready(function() {
  // All the JavaScript that depends on jQuery will be written here

  // Select the article DOM element by its id attribute
  var article = $("#top-article");
  console.log("article", article);
});
```

You can also select an element by its class.

```js
$(document).onready(function() {
  // All the JavaScript that depends on jQuery will be written here

  // Select the article DOM element by its class attribute
  var article = $(".article--main");
  console.log("article", article);
});
```


1. Adding elements
1. Removing elements

## AJAX

1. What is asynchronous execution vs. synchronous execution?
1. What is XHR (history and usage)?
1. Reading local JSON file with jQuery
