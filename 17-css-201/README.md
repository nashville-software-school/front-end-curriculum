# CSS 201

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
1. [Frameless](http://framelessgrid.com/)

Start a new playground directory named `responsive` and use Bower to install Bootstrap, and get the JavaScript and CSS linked in to the HTML file.


### Flexible images and media

1. [Fluid images](http://alistapart.com/article/fluid-images)
1. [Flexible images](http://webdesignerwall.com/tutorials/responsive-design-with-css3-media-queries)


## CSS pre-processing with SASS

Get SASS installed, show some examples, and then show how to use Grunt to compile SASS on file change.

## CSS3

### Transitions

### Transforms

### Animations