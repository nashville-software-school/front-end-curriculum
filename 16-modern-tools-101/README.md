# Modern Front End Tooling 101

## Grunt

Talk about what Grunt does for modern front end developers.

 * Checking code for errors
 * Uglify code
 * Concatenate files
 * Other cool stuff

In your Vagrant machine, run the command `which grunt`. You should see the output `/usr/local/bin/grunt`.  If you don't, execute the command `sudo npm install grunt-cli -g`.

```bash
cd ~/workspace/modules
mkdir javascripts
npm init
touch Gruntfile.js
```

After completing those tasks, replace the contents of `package.json` file - which got created with the `npm init` command - with the following configuration code. Move all of your JavaScript into the `javascripts` folder.

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

Now run `npm install` to install all those packages that are specified in the `package.json` file. If you are running Windows, you may need to run `npm install --no-bin-link` instead so that no symlinks are created in the process (Windows no like symlinks).

Next, open `Gruntfile.js` and put in the following code.

```js
module.exports = function(grunt) {

  grunt.initConfig({
    jshint: {
      files: ['*.js']
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
      files: ['./javascripts/**/*.js']
    },
    watch: {
      javascripts: {
        files: ['./javascripts/**/*.js'],
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

1. `bower init`
1. `bower install jquery --save`
1. `bower install requirejs --save`
1. `bower install bootstrap --save`

These command will put the libraries, pulled from Github usually, into a `bower_components` directory. You then can include them in your html with the appropriate path. For example...

`<script src="./bower_components/jquery/dist/jquery.min.js`

## Modular JavaScript with RequireJS

1. Download require script
1. Configure require
1. Convert your existing JavaScript modules to require modules

