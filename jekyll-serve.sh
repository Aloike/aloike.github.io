#!/bin/bash

## This script starts a local jekyll web server.
##
## References:
##  + https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll


# bundle install
bundle update

bundle exec jekyll serve --livereload


exit $?

