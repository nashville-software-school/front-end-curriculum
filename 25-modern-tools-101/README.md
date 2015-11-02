# Modern Front End Tooling 101

## Install Grunt

Talk about what Grunt does for modern front end developers.

 * Checking code for errors
 * Uglify code
 * Concatenate files
 * Other cool stuff

In your Vagrant machine, run the command `which grunt`. You should see the output `/usr/local/bin/grunt`.  If you don't, execute the following command in yor Vagrant machine `sudo npm install grunt-cli -g`.

## Web application code organization

Up until now, we've simply been putting all of our files into one directory. You are about to start building much more complex applications, and this requires a bit more organization - not just at the code level, but also at the file system level.

First, in every project directory, you are going to create a few standard directories and files.

```bash
mkdir -p /vagrant/requirejs && cd $_
mkdir javascripts # Will store all of our JavaScript code
mkdir styles # Will store all of our CSS
mkdir lib # Will store all 3rd-party libraries
touch .gitignore # Tells git which files should not be tracked
touch lib/Gruntfile.js # Task automation script
```

Before you can run Grunt tasks, you need to use node and npm to have the libraries needed in order for Grunt to do its job. Below are the commands needed to get it set up. You will be given a series of prompts on the command line after you run `npm init` and you can just hit the return key for all of them to accept the default values.

```bash
cd lib
npm init  # Initialize directory with a package.json file
```

This will create a pretty standard `package.json` file in your `lib` folder. This file is what Node Package Manager (npm) uses to record all of the 3rd-party Node.js libraries that your application will use. For now, we're only going to install the packages needed to make Grunt run.

Replace the contents of `package.json` file with the following configuration code. Simply copy from here, delete all of the current contents, and paste this in.

```js
{
  "name": "modules",
  "version": "0.1.0",
  "devDependencies": {
    "grunt": "~0.4.5",
    "grunt-contrib-jshint": "^0.11.2",
    "grunt-contrib-nodeunit": "~0.4.1",
    "grunt-contrib-uglify": "~0.5.0",
    "grunt-contrib-watch": "^0.6.1",
    "matchdep": "^0.3.0"
  }
}
```

In the CLI, make sure you are still in the `lib` directory. Now run `npm install` to install all those packages.

> **Windows users:** If you are running Windows, you may need to run `npm install --no-bin-link` instead so that no symlinks are created in the process (Windows no like symlinks).

Next, open `Gruntfile.js` and put in the following code.

```js
module.exports = function(grunt) {

  grunt.initConfig({
    jshint: {
      files: ['../javascripts/**/*.js']
    },
  });

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
  grunt.registerTask('default', ['jshint']);
};
```

What we've configured one task, `jshint`, for Grunt to run. To run Grunt and execute that task, just run the `grunt` command in your CLI.

### Watching files and running a task automatically

```js
module.exports = function(grunt) {

  grunt.initConfig({
    jshint: {
      files: ['../javascripts/**/*.js']
    },
    watch: {
      javascripts: {
        files: ['../javascripts/**/*.js'],
        tasks: ['jshint']
      }
    }
  });

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);
  grunt.registerTask('default', ['jshint', 'watch']);
};
```

## Bower

Bower is a package manager, like `npm`, but for front end development tooling that we use to build web applications. One of the main benefits of Bower is that installation of requires components for your application can now be automated during the build process (Travis, Jenkins, etc.). Using Bower, you never check third-party libraries into **your** codebase, but rather install them during the build process.

Once again, make sure you are in the `lib` directory, since these are 3rd-party dependencies.

1. `bower init`
1. `bower install jquery --save`
1. `bower install requirejs --save`
1. `bower install bootstrap --save`

Note the `--save` flag after the command. What this does is write the name and version of the library that you just installed into the `bower.json` file. Open that file to see what was recorded.

These command will put the libraries, pulled from Github usually, into a `bower_components` directory. You then can include them in your html with the appropriate path. For example...

`<script src="./lib/bower_components/jquery/dist/jquery.min.js`

## Modular JavaScript with RequireJS

1. Download require script
1. Configure require
1. Convert your existing JavaScript modules to require modules

