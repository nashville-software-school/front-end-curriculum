# CSS 101

**C**ascading **S**tyle **S**heets

## Prerequisite Homework

1. *Treehouse* > *Customizing Colors and Fonts*: Watch all videos and complete all exercises.

## What is CSS?

In the earliest days of the World Wide Web, there were just documents. The Web was intended to share research documents, and so things that we see now like dynamic applications, beautiful layouts and colors, and cool animations were not even thought of.

Then, companies started to see a glimmer of promise for making money on the Web, so they started sharing their documents. Plain, boring text didn't cut it, so the W3C (World Wide Web Consortium) released CSS1 in 1996 so that professional web page developers - there weren't that many yet - could create more stylized documents with complex layouts and color schemes.

> **Instructor Suggestion:** 
> Have students open up their HTML101 profile [Codepen ](http://codepen.io/) and start adding CSS to that project.

## Selecting an element

1. Show how to select elements by class, and by id.
1. Show how to select child, descendant, and sibling elements.

## Adding colors

1. Show how to use the color and background-color properties.

## Changing fonts (face, weight, and size)

1. Change the default font of the body.
2. Make different elements have different font faces.

## Aligning text

1. Give examples of left, center, and right aligned text.

## Floating elements

1. Float left, and right. Show how it affect the layout.
1. Show usage of `clear: both` to ensure page flow reverts back to standard after a floating element.

## Adding borders

1. Thickness & color.
1. Type (solid, dotted, dashed).
1. Show how to do rounded corners with `border-radius`.

> **Instructor Suggestion:** 
> Break now for a class exercise (shown below). Have students open up their  profile on [Codepen ](http://codepen.io/) and add a navigation bar to their profile.

## Create navigation with lists and CSS

Show students how to convert a standard `<ul>` element into a usable navigation section at the top of the page.

```css
.nav {
    background-color: goldenrod;
    height: 30px;
}

.nav > li {
    float: left;
    list-style-type: none;
    margin: 5px 15px 0 15px;
    font-family: "Arial";
    cursor: pointer;
}

.nav > li:hover {
    color: white;
}
```

## Homework

1. *Treehouse* > *Styling Web Pages and Navigation*: Watch all videos and complete all exercises.
1. *Treehouse* > *Console Foundations* > *Getting Started with the Console*: Finish all 12 sections.

---

# Want to learn more?

1. **Generate and use a cool tooltip**. Visit the [CSS Tooltip Generator](http://www.cssportal.com/css-tooltip-generator/) and create the CSS you need. Then, see if you can get a tooltip to display when you hover a link in your profile page.
2. **Create awesome buttons**. Visit the [CSS3 Button Generator](http://css3button.net/) and make buttons for your navigation instead of links.
3. 