# CSS Positioning

## Absolute

Absolute positioning is the easiest to understand. You start with the CSS position property:

```css
position: absolute;
```

This tells the browser that whatever is going to be positioned should be removed from the normal flow of the document and will be placed in an exact location on the page. It is also taken out of the normal flow of the document - it won't affect how the elements before it or after it in the HTML are positioned on the Web page.

If you want to position an element 10ems from the top of the document window, you would use the "top" offset to position it there with absolute positioning:

```css
position: absolute; top: 10em;
```

This element will then always display 10em from the top of the page - no matter what else displays there in normal flow.

Absolutely positioned boxes that have no width set on them behave a bit strangely. Their width is only as wide as it needs to be to hold the content. So if the box contains a single word, the box is only as wide as that word renders. If it grows to two words, it'll grow that wide.

## Relative (static)

These two values are basically the same. The difference is that you'll never explicitly state `static` as the value of the position because that is the default value.

Relative positioning uses the same four positioning properties as absolute positioning. But instead of basing the position of the element upon the browser view port, it starts from where the element would be if it were still in the normal flow.

For example, if you have three paragraphs on your Web page, and the third has a position: relative style placed on it, it's position will be offset based on it's current location - not from the original sides of the view port.

```html
<p>Paragraph 1.</p>
<p>Paragraph 2.</p>
<p style="position: relative;left: 2em;">Paragraph 3.</p>
```

In the above example, the third paragraph will be positioned 3em from the left side of the container element, but will still be below the first two paragraphs. It would remain in the normal flow of the document, and just be offset slightly. 

## Fixed

Fixed positioning is a lot like absolute positioning. The position of the element is calculated in the same way as the absolute model - from the sides of the view port. But fixed elements are then fixed in that location, like a watermark. Everything else on the page will then scroll past that element.

```css
position: fixed;
```

# Resources

[CSS Pro Tips](https://github.com/AllThingsSmitty/css-protips)

# Challenge \#1

Your challenge is to replicate the shapes, and the animations that you see in the animated GIF below. You must **only use CSS**. No JavaScript and no images.

<img src="http://www.stevebrownlee.com/content/images/css102-challenge.gif">