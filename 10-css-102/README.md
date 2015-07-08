# CSS 102

You will learn more advanced CSS features

## The box model
## Selecting specific elements in a list

### nth-child
Using the `nth-child` [pseudo class](https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-child) in CSS is a newer addition that let's you select either a specific item in a list of child DOM elements, or a general class of child DOM elements.

Using the formula `an+b` where `a` and `b` are integer values.

1. `1n+0` to select all elements
1. `2n+0` to select even elements (2, 4, 6, ...)
1. `3n+0` to select every third element (3, 6, 9, ...)
1. `2n+1` to select odd elements (1, 3, 5, ...)

There are also shortcut selectors

1. `odd` is the same as `2n+1`
1. `even` is the same as `2n+0`

```html
<article>
  <section> A </section>
  <section> B </section>
  <section> C </section>
  <section> D </section>
</article>
```

The following selector will put a border around the even sections

```css
article section:nth-child(2n+0) {
  border: 1px solid black;
}
```

### nth-of-type

This pseudo selector will only count the specific element type that you specify, instead of against all children. This is useful when the children of an element aren't all the same type.

```html
<article>
  <section> A </section>
  <section> B </section>
  <aside> Aside </aside>
  <section> C </section>
  <section> D </section>
  <section> E </section>
</article>
```

The following code will put a border around sections 1 and 5 because 3 isn't a section.

```css
article section:nth-child(2n+1) {
  border: 1px solid black;
}
```

However, the following code will make sections 1, 3 and 5 because it's only counting the section elements and ignores the aside element.

```css
article section:nth-of-type(2n+1) {
  color: blue;
}
```

### first-of-type

When you only want to select the first child element that of a type.

```html
<article>
  <section> A </section>
  <section> B </section>
  <aside> Aside </aside>
  <section> C </section>
  <section> D </section>
  <section> E </section>
</article>
```

The following code will highlight the first section, and the aside.

```css
article :first-of-type {
  background-color: lime;
}
```

The following code will highlight the **only** first section because we made the selector more specific.

```css
article section:first-of-type {
  background-color: lime;
}
```

### first-child

This will only select the first sibling child of a shared parent

```html
<article>
  <section> A </section>
  <section> B </section>
  <aside> Aside </aside>
  <section> C </section>
  <section> D </section>
  <section> E </section>
</article>
```

The following code will highlight the first section, and the aside.

```css
section {
  background-color: orange;
}

article section:first-child {
  background-color: lime;
}
```


## Positioning (initial, fixed, static, absolute, etc)

## Advanced pseudo-classes

`:checked` for selected any checkboxes in a form that have been checked by the user.

### HTML5 form type validation classes

```
<form>
  <div>
    <label>Enter a URL:</label>
    <input type="url" />
  </div>

  <div>
    <label>Enter an email address:</label>
    <input type="email" required/>
  </div>
</form>
```

```css
input:valid {
  background-color: #ddffdd;
}

input:invalid {
  background-color: #ffdddd;
}
```