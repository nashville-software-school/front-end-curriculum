# Music History Part 1

You will be building the basic structure of your Music History application in HTML and making it look good with the skills you learned in CSS.

Visit the [Music History mockup](https://moqups.com/chortlehoort/1E8LJX7r/) and create a new Pen on Codepen and make your own page that looks exactly like the one shown there.

## Criteria

1. Create five options for the artist select element of any artist that you enjoy.
1. Create at least five options for the album select element. One, or more, album for each artist.
1. The links in the navigation bar don't need to link to anything just yet, you can use `<a href="#">View music</a>` for now
1. Pick your four favorite songs from the artists you have chosen and use the information for each in the list that's on the right-hand side.

## Creating your Github project

1. Go to your Github profile page
1. Click on the plus sign at the top, and select "New repository"
1. Type in **musichistory** in the repository name box
1. Change nothing else and click the "Create repository" button
1. Open a terminal on your machine, and SSH into your Vagrant box
1. `mkdir musichistory` to create a local directory to be synced with your Github project
1. `cd musichistory`
1. Go back to your browser and copy the commands listed under the title "…or create a new repository on the command line"
1. Paste those commands into your terminal window and hit enter/return

Your local directory is now connected to your Github project. Now follow these steps.

1. Make sure you are still in your `musichistory` directory.
1. Paste the following command into your terminal. It creates an HTML file with some basic markup.

```
echo '<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>NSS Starter Kit</title>
</head>

<body>

</body>
</html>' > index.html

```

1. Copy the code from your Codepen project in between the opening and closing `<body>` tags.
1. `git add .`
1. `git commit -m "Adding Codepen code"`
1. `git push origin master`
