1. Create a Github repo named JS201.
1. Clone it into your workspace directory and `cd` into the directory it creates.
1. Create a `javascripts`, `css` and a `sass` directory.
1. Use Bower to install the following packages - jQuery, RequireJS, Handlebars (make sure you use the `require-handlebars-plugin` Bower library, not plain Handlebars). You may install more if you need to, but that is the minimum.
1. Copy your `package.json` file from an existing project into this directory and install the packages.
1. Set up a `Gruntfile.js` that builds any `.scss` files in your sass directory into your `css` directory. It must also have a task for running JSLint on the code in your `javascripts` directory.
1. Create a new Firebase application. Go to your dashboard and fill out the form. App name should be "family", and provide a unique URL. (e.g. nss-steve-family)
1. Using RequireJS, build a modular application that reads all family members from your Firebase DB, lets you add new family members, and lets you delete family members (like that annoying nephew you can't stand).
1. There should be a main module, a module that handles adding, and a module that handles deleting.
1. Use the JSON structure shown below when adding a family member.  For the skills array, have a `<textarea>` field in your form where the user can enter in a comma-delimited list of skills that you will convert into an array.
1. Use a Handlebars template to create the DOM that lists all family members.
1. You can either use AJAX calls to handle all operations, or if you're comfortable with the Firebase native API, you can use that.
1. Commit early, commit often.
1. When completed, send your Github URL to your assigned TA (I'll announce who yours will be).

> **Family member JSON stucture**
>
> ```
> {
>   "family": [
>     {
>       "name": "First Last",
>       "age": 4,
>       "gender": "male",
>       "skills": [
>         "burping",
>         "farting",
>         "inappropriate shouting",
>         "tantrums"
>       ]
>     }
>   ]
> }
> ```
> 
