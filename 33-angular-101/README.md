# Angular101

## Installation

Create a new folder and do your base project setup with Bower, npm, and Grunt. However, this time, instead of making a `javascripts` folder, make an `app` folder which will hold all of your JavaScript files. Make sure you update your Gruntfile accordingly.

```
cd lib
bower install angular --save
```

Then include Angular in your HTML file.

```
<script src="lib/bower_components/angular/angular.min.js"></script>
```

Next, create the file `app/Todo.js` and set up your Angular application with the following code.

```
var app = angular.module("TodoApp", []);
```

The next thing you want to do is create a controller, which is an Angular function where you write related logic for a feature. To start off with, we'll create a controller for displaying, creating, and deleting Todo items.

```
app.controller("TodoCtrl", function($scope) {

});
```

## Scope

We've talked about how, in JavaScript, scope drives what variables are accessible at certain points in your code: global scope, function scope, etc. Well, in Angular, the `$scope` object is kind of magical. It will not only contain all of the variables and functions that you want to use inside a controller, but it also automatically bound to variable interpolations in your HTML.  It works just like Handlebars did where a variable in JavaScript could be written with two curly braces in HTML (e.g. `{{ myVariable }}`).

So let's start with a basic example of one-way data binding in Angular.

```
app.controller("TodoCtrl", function($scope) {
  $scope.title = "Welcome to your task list";
});
```

In your HTML, there's a couple things that need to be in place to start working with that variable.

1. We need to bind the Angular application to our DOM. The simplest way to do this is on the `<body>` element.
2. We need to bind a controller to a corresponding DOM element. We'll just bind it to a `<section>` element.

```
<body ng-app="TodoApp">
  <section ng-controller="TodoCtrl">

  </section>
</body>
```

Now we can start injecting variable interpolations, just like Handlebars.

```
<body ng-app="TodoApp">
  <section ng-controller="TodoCtrl">
    <h1>{{ title }}</h1>
  </section>
</body>
```

## Two-way binding

Now let's look at what a magical unicorn looks like. Two-way data binding. Put an input field in your HTML, and use the `ng-model` attribute on it with a value of `macaroni` (just a random variable name for this exercise). Right beneath it, we'll put a standard interpolation of macaroni.

```
<div>
  <input type="text" ng-model="macaroni" />
  <div> {{ macaroni }} </div>
</div>
```

Then add a macaroni variable to your controller's scope.

```
app.controller("TodoCtrl", function($scope) {
  $scope.title = "Welcome to your task list";
  $scope.macaroni = "";
});
```

Now refresh your browser, start typing in the input field and bathe in the awesomeness of the magical unicorn of two-way data binding.

## Looping over collections

Remember the `{{#each}} {{/each}}` helper in Handlebars? Well, Angular does something very similar. To show this off, let's create an array of Todo items in our controller scope.

```
app.controller("TodoCtrl", function($scope) {
  $scope.title = "Welcome to your task list";
  $scope.macaroni = "";

  $scope.todos = [
    { name: "Mow the lawn", complete: "incomplete" },
    { name: "Cut the grass", complete: "complete" },
    { name: "Kill the ants", complete: "incomplete" },
    { name: "Trim the weeds", complete: "complete" }
  ];
});
```

To output these in our HTML, we use the `ng-repeat` helper. The syntax is different than Handlebars, though.

```
<div>
  <ul ng-repeat="todo in todos">
    <li>{{ todo.name }}</li>
  </ul>
</div>
```

## Handling click events

So let's put in an affordance to delete each Todo. A button after each one, and the button will use the `ng-click` helper to bind to a function in our controller.

```
<div>
  <ul ng-repeat="todo in todos">
    <li>{{ todo.name }} <button ng-click="killTodo(todo)">Finish</button></li>
  </ul>
</div>
```

Add the `killTodo` function to the controller.

```
$scope.killTodo = function(todo) {
  // Do you see the PFM here of full object comparison?
  var todoIndex = $scope.todos.indexOf(todo); 
  
  if (todoIndex >= 0) {
    $scope.todos.splice(todoIndex, 1);
  }
};
```

Try it out.

## Promises

Angular has its own implementation of the Q library that we've been using.

## Filtering

Let's filter our list of Todos. Add an input field where we can enter in some text.

```
<input type="text" ng-model="searchText" />
```

Now we add the `filter` condition to our `ng-repeat` helper. Since we used `ng-model` above to create a two-way binding on the `searchText` variable, Angular will automatically match your search string against **any** key in the Todo 

```
<div>
  <ul ng-repeat="todo in todos | filter: searchText">
    <li>{{todo.name}}</li>
  </ul>
</div>
```

Refresh your page and start typing in something in the search field and watch the list of todos get immediately filtered.

## Grouping

Check out this bad boy. Angular can automatically group option elements in the select element based on a key name on the object.

```
<div>
  Grouped tasks:
  <select
      ng-model="theTodo"
      ng-options="value.name group by value.complete for value in todos">
  </select>
</div>
```

# Refactoring Music History \#1

> **Instructor Suggestion:** 
>
> Break now for a class exercise. Have students start refactoring their Music History application with Angular. Go back to where they were populating the list of songs from two JSON files.
> 
>    1. Read from two JSON files that have different songs.
>    1. Put all songs into one array and display the list of songs in the main content area.
>    1. Have a select element that shows a list of all albums.
>    1. Have a select element that shows a list of all artists.

