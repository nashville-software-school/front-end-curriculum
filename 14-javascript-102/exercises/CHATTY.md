# Chatty exercise

Make sure you have committed all your current changes on your current branch and have pushed to Github.

```bash
cd /vagrant/exercises
git checkout master
git checkout -b chatty
mkdir chatty && cd $_
```

## Adding listeners to dynamically created elements

When you add a DOM element to your page with JavaScript, the standard `addEventListener` method syntax will no longer work. What you need to do is listen for the event on the `<body>` element, and then inspect what the target of the event is (i.e. which element the user actually performed the action on).

```js
document.querySelector("body").addEventListener("click", function(event) {
  console.log(event);

  // Handle the click event on any li
  if (event.target.tagName.toLowerCase() === "li") {
    console.log("You clicked on an <li> element");
  }

  // Handle the click event on any DOM element with a certain class
  if (event.target.className === "article-section") {
    console.log("You clicked on an `article-section` element");
  }

  // Inspect the `id` property of the event target
  if (event.target.id === "page-title") {
    console.log("You clicked on the page-title element");
  }
});
```

## Requirements

Check out the [simple wireframe](https://app.moqups.com/chortlehoort/uGBbLbK46Y/view/page/a9d5cd7bf) for this application on Moqups.com.

### Navigation bar

1. Create an element to serve as the navigation bar for your application.
1. Create an element to hold the logo for your application. It can be as simple as text, but if you want to find an image, that's fine.
1. Create a input field for a user to enter in a message.
1. Add an event listener for "keypress" and detect when then return key has been pressed in the message field.
1. When return key is detected, you'll create a new message (*see details below*).
1. Create a button to clear all messages.
1. When the user clicks the clear messages button, all current chat messages should be removed from the application.
1. The navigation bar should remain at the top of the screen, even if the contents of the page start to scroll.

### Options

1. Create two checkboxes below the message input field. One labeled "Dark theme" and the other labeled "Large text".
1. When the user clicks on the dark theme checkbox, change the background color of your application to a dark gray, and the font color for messages should be white(ish)... you pick.
1. If the user unchecks the box, the background color should change back to white with black text for messages.

1. Create a `<div>` element in the HTML, below the input field that will hold all messages as they get created.
1. The message should have a button displayed after it with the text "Delete" inside of it.



```js
/*
  ...........YOUR MISSION...........

  Write an application that performs the bare basic
  functionality as Slack. Here's the criteria.

  - Create a input field for a user to enter in a message.
  - Create a `<div>` element in the HTML, below the input
      field that will hold all messages as they get created.
  - Add an event listener for "keypress" and detect when
      then return key has been pressed.
  - When return key is detected, append the innerHTML of 
      the element you created in step 2.
  - The message should have a button displayed after it with
      the text "Delete" inside of it.


*/

function toCelsius () {

}

function toFahrenheit () {

}

// Get a reference to the button element in the DOM
var button = document.getElementById("converter");

// This function should determine which conversion should
// happen based on which radio button is selected.
function determineConverter (clickEvent) {
  console.log("event", clickEvent);
}

// Assign a function to be executed when the button is clicked
button.addEventListener("click", determineConverter);
```