# The Project
*Repository for [The Project](http://karlstolley.github.com/535/projects.html) in COM535: Instructional Design*

## How to contribute:

1. Fork a copy of the repository using the Fork button.

2. Clone your fork by running (replace ``YOURUSERNAME``):

        $ git clone git://github.com/YOURUSERNAME/535.git

3. Add a new remote, called ``upstream``, to your cloned copy of the repository that points to the main repository:

        $ cd 535
        $ git remote add upstream git@github.com:karlstolley/535.git

4. Do your work on a development branch (e.g., `dev`) OR, better, on a feature branch (e.g., `section_overview`)

        $ git checkout -b dev

5. Make lots of small, simple commits

        $ git add some-file.html
        $ git commit -m "A message describing the change"

6. Keep your `master` branch up-to-date with the upstream remote. Regularly pull from upstream/master; rebase your `dev` or feature branch with ``master``:

        $ git checkout master
        $ git pull upstream master
        $ git checkout dev
        $ git rebase master

7. Push your ``dev`` and/or feature branches to your remote (``origin``):

        $ git push origin dev

8. If a rebase causes errors, you can force push the rebased branch (assuming you're not sharing with anyone else):

        $ git push origin dev -f

9. When you have work that is ready to be integrated into the upstream master branch, you’ll submit a pull request on GitHub. For the time being, see https://help.github.com/articles/using-pull-requests

## Doing development work:

To easily view your work in a browser, you’ll use either [Serve](http://get-serve.com/get-started) or [Jekyll](https://github.com/mojombo/jekyll)

### Using Serve

Once you have Ruby installed on your computer, just run:

    $ gem install serve

A bunch of output will fly by. Once its done, you can go into the project directory and run ``serve``, e.g.,

    $ cd 535
    $ serve

Open your browser to ``http://localhost:4000/`` and you will see the ``index.html`` page displayed.
Other files and folders can be accessed by appending them to the URL. E.g., to see the pages for the Git section of The Project, go to ``http://localhost:4000/git/``.

When you’re done viewing things in the ``serve`` server, hit Ctrl C to kill the process.

### Using Jekyll

With Ruby installed on your computer, run

    $ gem install jekyll

Make sure your copy of the repository is up-to-date with the
upstream ``master`` branch, [which includes](https://github.com/karlstolley/535/commit/5d1e2440a3d6647a92ba077a08fff11ec9386f51)
a ``_config.yml`` file and modification to ``.gitignore`` to
work with Jekyll, which outputs a ``site/`` directory (which we
don't want to track).

Once you've pulled, rebased, and/or merged your heart out,
just run

        $ jekyll --server --auto

And open up your browser to http://localhost:4000/ to see what's
going on.


