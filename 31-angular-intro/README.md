# Angular

Walk students through this simple Angular application to make Todos.

You can check out the complete code that you can use in a live coding session in the `todo` branch of the [Angular step-by-step](https://github.com/nashville-software-school/angular-step-by-step) repository.

## Installation

Create a new folder and do your base project setup with Bower, npm, and Grunt. However, this time, instead of making a `javascripts` folder, make an `app` folder which will hold all of your JavaScript files. Make sure you update your Gruntfile accordingly.

```bash
cd lib
bower install angular --save
```

Then include Angular in your HTML file.

```html
<script src="lib/bower_components/angular/angular.min.js"></script>
```

Next, create the file `app/Todo.js` and set up your Angular application with the following code.

```js
var app = angular.module("TodoApp", []);
```

The next thing you want to do is create a controller, which is an Angular function where you write related logic for a feature. To start off with, we'll create a controller for displaying, creating, and deleting Todo items.

```js
app.controller("TodoCtrl", function($scope) {

});
```

