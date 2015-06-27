# HTML

**H**yper**t**ext **M**arkup **L**anguage: The Building Blocks of the Web

## Prerequisites

### Tools

Students must have a CodePen account.

### Homework
1. Read Introduction and chapters 1-3 of Duckett's "**HTML & CSS**" book.  
2.  Complete the Treehouse Beginning HTML and CSS course.

## Overview 
What is it? Is it a "real" language like C or Java?

## Elements

---
> **Instructor Suggestion:** 
> First have the students copy the contents of the [basic HTML file](https://raw.githubusercontent.com/nashville-software-school/evening-cohort/master/resources/__basic.html) in the resources directory and paste it into a new Codepen project. Then live-code with them while describing each tag.

---

### Structure
  + html
  + head
  + body
  + div
  + span
  + article
  + section
  + nav
  + footer
  + header

### Meta
  + DOCTYPE
  + title
  + link
  + meta
  + style
 
### Text
  + h1...h5
  + p
  + strong
  + em
  + br

### Links
  + anchor

### Forms & element types
  + form
  + select
  + option
  + textarea
  + text
  + password
  + date
  + submit
  + radio
  + checkbox
  + button

### Images
  + img

### Lists
  + li
  + ul
  + ol

### Tables
  + table
  + td
  + tr
  + th  

### Element Attributes
> **MDN:** "Additional values that configure the elements or adjust their behavior"

+ `<a href="...">`
+ `<div id="...">`
+ `<span class="...">`
+ `<p style="...">`
+ `<img src="...">`
+ `<input name="...">`
+ `<input type="...">`
+ `<input required>`

They can, and usually are, combined.

`<div id="bio" class="student--biography" style="color: red">`

## Commenting your code

`<!-- This is how you comment HTML code -->`

---
> **Instructor Suggestion:** 
> Break now for a class exercise. Have students create a very simple profile page for themselves with their name, place of birth, email address, place of work (if applicable, otherwise NSS), and an unordered list of interests. Make sure student comment their code to describe the purpose of each element.

---

## Homework

1. Complete Treehouse HTML First course.
1. Complete Treehouse Creating HTML content course.

---

## Block elements vs inline elements  
Just touch on this by showing how some elements fill the width of their parent and some don't. Planting the seed for later when we begin styling.

A block element is an element that has, but may not be limited to, the following characteristics:

+ If no width is set, will expand naturally to fill its parent container
+ Can have margins and/or padding
+ If no height is set, will expand naturally to fit its child elements (assuming they are not floated or positioned)
+ By default, will be placed below previous elements in the markup (assuming no floats or positioning on surrounding elements)
+ Ignores the vertical-align property  

Examples: `<p>, <div>, <form>, <header>, <nav>, <ul>, <li>, and <h1>`

An inline element has, but may not be limited to, the following characteristics:

+ Flows along with text content, thus
+ Will not clear previous content to drop to the next line like block elements
+ Is subject to white-space settings in CSS
+ Will ignore top and bottom margin settings, but will apply left and right margins, and any padding
+ Will ignore the width and height properties
+ If floated left or right, will automatically become a block-level element, subject to all block characteristics
+ Is subject to the vertical-align property

The easiest way to picture an inline element is to think of it as a box that acts like text. What happens, for example, to text that’s not separated by other elements? It flows one letter after the other. If you put an inline element next to text, it will flow next to that text just like another piece of text.  
Examples: `<a>, <span>, <b>, <em>`


> **Instructor Suggestion:** 
> Break now for a class exercise. Live-code some example where a span or anchor tag is a child of a block element, and then show a block element child.


## Dive Deeper into HTML

### Required Reading

[Writing Your Best Code](http://learn.shayhowe.com/html-css/writing-your-best-code/)

### Learn more 

#### Videos
[HTML Images and Hyperlinks](https://www.youtube.com/watch?v=CGSdK7FI9MY)  
[ID's vs Classes](https://www.youtube.com/watch?v=9UNmumTYuq8) 

#### Articles and Tutorials

##### Basics
[Mozilla Developer Network's Intro to HTML](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Introduction)  
[HTML Web Foundations: Elements](http://www.sitepoint.com/web-foundations/elements/)  
[How to Structure an HTML Form](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/How_to_structure_an_HTML_form)

##### Advanced
[HTML Advanced Tutorial](http://htmldog.com/guides/html/advanced/)  
[All You Need to Know About the HTML5 Data Attribute ](http://webdesign.tutsplus.com/tutorials/all-you-need-to-know-about-the-html5-data-attribute--webdesign-9642)  
[Authoring conformance criteria for bidirectional-algorithm formatting characters](http://www.echoecho.com/htmlframes.htm)
