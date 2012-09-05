# The Project
*Repository for [The Project](http://karlstolley.github.com/535/projects.html) in COM535: Instructional Design*

## How to contribute:

1. Clone this repository by running

    ``$ git clone git://github.com/karlstolley/535.git``

2. Immediately fork your own copy via GitHub, then back on your computer, add a new remote to your clone, perhaps called ``personal``:


     ``$ cd 535``

     ``$ git remote add personal git@github.com:YOUR_USERNAME/535.git``


3. Make lots of small, simple commits


      ``$ git add some-file.html``

      ``$ git commit -m "A message describing the change"``


3. Regularly pull from origin/master; regularly push to your own branch at ``personal``:


      ``$ git pull origin master``

      ``$ git push personal master``


4. When you have work that is ready to be integrated into the origin/master branch, you’ll submit a pull request on GitHub. For the time being, see https://help.github.com/articles/using-pull-requests

## Doing development work:

To easily view your work in a browser, you’ll use [Serve](http://get-serve.com/get-started).

Once you have Ruby installed on your computer, just run:

    $ gem install serve

A bunch of output will fly by. Once its done, you can go into the project directory and run ``serve``, e.g.,

    $ cd 535
    $ serve

Open your browser to ``http://localhost:4000/`` and you will see the ``index.html`` page displayed.
Other files and folders can be accessed by appending them to the URL. E.g., to see the pages for the Git section of The Project, go to ``http://localhost:4000/git/``.

When you’re done viewing things in the ``serve`` server, hit Ctrl C to kill the process.

