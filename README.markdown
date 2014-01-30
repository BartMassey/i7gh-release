Inform 7 GitHub Release
Copyright © 2012 Bart Massey

The tiny `i7gh-release` script automates the process of
getting the GitHub Pages of an Inform 7 project set up as a
playable version of the project. The script is currently
quite primitive. It assumes that you already have a gh-pages
branch in your repo and that the Release directory of your
project has been built.  The script cleans out the gh-pages
branch and replaces it with the appropriate contents, and
then pushes the whole thing to GitHub.

A second script here, `i7git`, automates the process of
checking a new Inform 7 project into Git in the first place.

This program is licensed under the "MIT License".  Please
see the file COPYING in the source distribution of this
software for license terms.
