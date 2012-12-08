# saucer - coffeescript boilerplate

![def](http://static.benet.ai/skitch/saucer-20121208-004907.png)

Saucer is an opinionated template project for coffee/javascript development.
It gets you up and running with the following tools:

* [coffeescript](http://coffeescript.org/) for awesomeness
* [grunt](http://gruntjs.com/) for the task-based build system
* [npm](http://npmjs.org/) for installing other packages
* [jasmine](http://pivotal.github.com/jasmine/) for tests
  * [jasmine-runner](https://github.com/jasmine-contrib/grunt-jasmine-runner)
    for the commandline (with [phantomjs](http://phantomjs.org/))
  * [jasmine-spec-server](https://github.com/jbenet/grunt-jasmine-spec-server)
    for the webserver
* [closure compiler](https://developers.google.com/closure/) for dependencies
    and minification

and the frontend libs:

* [jquery](http://jquery.com/) for dom manipulation
* [underscore](http://underscorejs.org) for awesome utilities
* [backbone](http://backbonejs.org/) for awesome mvc apps
* [bootstrap](twitter.github.com/bootstrap/) for awesome style

(if you don't need any of these, you can just delete them).

## source tree

Saucer organizes the code thus:

    ├── Gruntfile.coffee - the grunt task file
    ├── README.md        - this file
    ├── build            - the build directory, for compiled code
    ├── coffee           - coffeescript code
    │   ├── src          - coffeescript source files
    │   └── test         - coffeescript test files
    ├── js               - javascript code (generated from coffee/)
    │   ├── deps.js      - generated dependencies file (closure)
    │   ├── src          - javascript source files
    │   └── test         - javascript test files
    ├── lib              - libraries
    │   ├── bootstrap    - bootstrap js/css library
    │   └── closure      - closure library + compiler
    ├── node_modules     - npm installed modules
    └── package.json     - package info

## grunt tasks

Available tasks (ignore others):

        coffee  Compile CoffeeScript files (coffee/ to js/)
          deps  Generates file dependencies (js/deps.js)
          test  Runs jasmine tests in the commandline.
    testserver  Runs jasmine tests in a webserver.
       compile  Closure compiles the source (js/src/).
       default  Alias for "compile" task.
         watch  Watches coffee/ and re-runs "deps"
         clean  Clear files and folders (js/, build/)

Common workflow:

* write code in `coffee/src/`
* write corresponding tests in `coffee/test/`
* test with `grunt --config Gruntfile.coffee test`
* test with `grunt --config Gruntfile.coffee testserver`
* compile code with `grunt --config Gruntfile.coffee compile`
