## Mobile first CSS

### Media queries and media query listeners

> **Reference:** [Media Queries on MDN](https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Media_queries)

Load styles based on media criteria. Thinking mobile first, specify the `min-width` value of the smallest device first and then work up from there.

##### index.html

```html
  <link rel="stylesheet" href="styles/responsive.css">
  
  <article class="colors">
    <span class="card-holder">
      <section class="first">Block A</section>
      <section class="second">Block B</section>
      <section class="third">Block C</section>
    </span>
  </article>
```

##### responsive.css

```css
article {
  text-align: center;
  font-size: 30px;
}

.first {
  background-color: cyan;
}

.second {
  background-color: yellow;
}

.third {
  background-color: magenta;
}

@media screen and (min-width: 320px) {
  .first, .second, .third {
    display: block;
    padding: 50px;
  }
}

@media screen and (min-width: 640px) {
  .first, .second, .third {
    display: inline-block;
    padding: 50px;
  }
}
```

### Grid-based layouts 

We'll be using [Bootstrap](http://getbootstrap.com/getting-started/) for our apps from this point on. There are some others that have become popular.

1. [Foundation](http://foundation.zurb.com/)
1. [Materialize](http://materializecss.com/)
1. [Skeleton](http://getskeleton.com/)
1. [Frameless](https://github.com/jonikorpi/Frameless)

Start a new playground directory named `responsive` and use Bower to install Bootstrap, and get the JavaScript and CSS linked in to the HTML file.

### Advanced layouts with Flexible Box Layout (Optional)

A relatively new CSS feature is the [Flexible Box Layout module](http://css-tricks.com/snippets/css/a-guide-to-flexbox/). Explain how `display: flex`, `flex-flow`, and `flex-grow` works. Using this should help those who struggled with the first Music History layout.

#### Recommended reading

Read this wonderful [visual guide to Flexbox](https://scotch.io/tutorials/a-visual-guide-to-css3-flexbox-properties).


> **Instructor Suggestion:** 
> 
> Have students fork the [Flexbox project](http://codepen.io/chortlehoort/pen/PqexqV) on Codepen and experiment with different values for `flex-flow`, and `flex-grow`.  The code for that Pen is below for quick reference.

```html
<div class="flex-container">
  <header class="flex-item">Header</header>
  <section class="flex-item sidebar__left">Sidebar</section>
  <section class="flex-item main">Main</section>
  <section class="flex-item sidebar__right">This is some longer sidebar content that shows how every cell in this row will grow to be the same size as this one.</section>
  <footer class="flex-item">Footer</footer>
</div>
```

```css
.flex-container {
  padding: 0;
  margin: 0;
  list-style: none;
  height: 200px;  
  display: flex;
  flex-flow: row wrap;
}

.flex-container > header, 
.flex-container > footer { 
  flex: 1 100%; 
}

.sidebar__left { 
  flex-grow: 2;
}

.sidebar__right { 
  flex-grow: 1;
}

.main {
  flex-grow: 6;
}

.flex-item {  
  background: tomato;
  padding: 10px;
  width: 100px;
  border: 3px solid rgba(0,0,0,.2);
  
  color: white;
  font-weight: bold;
  font-size: 2em;
  text-align: center;
}
```


### Flexible images and media

1. [Fluid images](http://alistapart.com/article/fluid-images)
1. [Flexible images](http://webdesignerwall.com/tutorials/responsive-design-with-css3-media-queries)


# Resources

## Animation libraries

1. [Mo.js](http://mojs.io/) - Spectaclular modern animation library
2. [jQuery](https://api.jquery.com/?ns0=1&s=animation) has many built-in animation methods.
3. [Move.js](https://visionmedia.github.io/move.js/) - A very small JS library for using animations without the need for jQuery
4. [three.js](http://threejs.org/) - The most popular library for 3D animations
