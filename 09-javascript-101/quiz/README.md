# JavaScript 101 Quiz

> **Instructor:** 
>
> 1. Create a new repository in the current cohort's Github Classroom organization and put the remainder of this page as its README.
> 1. Create a new individual project in Github Classroom enter in the repo's path from step 1 as the template.
> 1. Send the project link to students.

## Paste content below into template repo

>  **Student note:** The names of variables are up to you

1. Clone this repository into your `/vagrant/quizzes` directory.
2. Create an `index.html` file and a `quiz.js` file and link them up.
3. Add the following code to your HTML file's `<body>` tag.

```html
<article>
  <section id="fruit-list"></section>
</article>
```

## Your mission:

1. Create a variable that is an empty string.
2. Create a variable that holds an empty array.
3. Create a variable that holds the value of 2.
4. Add the names of ten fruits to the array. Make sure some of the fruits have the letter 'a' in them.
5. Set up code to loop over every other item in your array of fruits.
6. Inside the loop, check if there is the letter 'a' in the name of the current fruit.
7. If there is an 'a' anywhere in the current fruit name, then replace it with an 'e'.
8. Add the new name of the fruit to the variable that was initially set up as an empty string (see step 1).
9. Update the contents of the `fruit-list` DOM element with the new fruit name inside a block-level DOM element.
11. Each block-level element that contains a fruit name should have a background color (of your choice) applied to it.
12. The entire fruit list should have a 1px border around it (not each one individually).
13. The first fruit's name should be bold text.
14. The last fruit's text should be `20px` in size and the entire element should have a different background color.