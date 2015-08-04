# HTML 201

# HTML 5

What new things can you do with HTML 5?

[What's different](https://html-differences.whatwg.org/) than HTML 4?

1. New elements (section, article, main, aside, video, audio, etc...)
1. Form input types (search, url, email, date, etc...)
1. A new placeholder attribute can be specified on the input and textarea elements
1. HTML imports
1. Drag & Drop
1. Client storage
1. WebSocket support
1. Data push with EventSource

# HTML Evolved with Handlebars

Run the following commands.

```
mkdir ~/workspace/handlebars
cd handlebars
touch index.html
mkdir javascripts
touch javascripts/main.js
bower install jquery
bower install handlebars
```

##### index.html

---

```html
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>NSS Starter Kit - Handlebars</title>
</head>

<body>

  <div id="entryOutput"></div>

  <script id="entry-template" type="text/x-handlebars-template">
    <div class="entry">
      <h1>{{title}}</h1>
      <div class="body">
        {{body}}
      </div>
    </div>

    <ul>
    {{#each tags}}
      <li>{{category}}:{{name}}</li>
    {{/each}}
    </ul>

    {{> tagline }}
  </script>

  <script id="tagline-partial" type="text/x-handlebars-template">
    <div class="tagline">
      <h4>Authored by {{author_first_name}} {{author_last_name}}</h4>
      <div class="date">{{authored_date}}</div>
    </div>
  </script>
  
  <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="bower_components/handlebars/handlebars.min.js"></script>
  <script type="text/javascript" src="javascripts/main.js"></script>

</body>
</html>

```

##### main.js

---

```js
// Define an object to hold the data for a template
var entryData = {
  title: "My New Post", 
  body: "This is my first post!",
  tags: [
    {
      category: "technology",
      name: "handlebars"
    },
    {
      category: "author",
      name: "steve"
    }
  ]
};

var taglineData = {
  author_first_name: "Steve",
  author_last_name: "Brownlee",
  authored_date: "January 29, 2015"
};

// Ignore this the first time through... move along
Handlebars.registerPartial("tagline", Handlebars.compile($("#tagline-partial").html())(taglineData));

// Grab the HTML from the appropriate <script> tag
var entryHTML = $("#entry-template").html();

// Use handlebars to compile it into a template
var entryTemplate = Handlebars.compile(entryHTML);

// Render the resulting HTML by passing the data to the template
var entryOutput = entryTemplate(entryData);

// Now take the final, compiled HTML and inject it into your DOM
$("#entryOutput").append(entryOutput);
```

1. Basic template with interpolation
1. Handlebar helpers (each, if..else, unless)
1. Handlebar [partials](http://blog.teamtreehouse.com/handlebars-js-part-2-partials-and-helpers)
1. Custom Handlebar helpers
