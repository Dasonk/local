local
==========

The `local` package is designed to provide an easy way to store all of your on the fly functions in one place.  Once saved when the package loads then all of the functions you've saved using the package will be reloaded.  This is a convenient alternative to writing your functions into a script so that they're all in one place.

Eventually the goal is to make it easy to turn the functions stored into 'local' into their own package.  Keep your eyes open for another package soon to come that will allow one to write documentation for functions made on the fly. Make sure that this package gets installed in a location that you have read/write access to or it will not work as intended.

## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/local/zipball/master) or [tar ball](https://github.com/Dasonk/local/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("local", "Dasonk")
```

## Usage

Currently when you store functions or data into the database then the next time the local package is loaded they will get written to the _global environment_.  This is less than ideal and eventually the goal is to write them to their own namespace but... I need to learn a little more to do that.  So currently this package is dangerous to use because it can and will write over any functions or data in your current global environment if it shares a name with anything in the local database.  The next step which will come very soon is to create a conflict management system so that other objects don't get written over and you have options on what to do in case of a name collision.  Giving local its own namespace would, of course, eliminate the need to this.

## Goals

  1. Be able to document functions and/or datasets on the fly
  2. Specify a package name to save functions and/or data into
  3. Mainly the goal is to be able to document functions on the fly but I figured it would be necessary to have the functions in some sort of package to do that and thus `local` was born.  This would be nice for people who don't have the know-how or don't want to take the time to create and build and install a package just to have help pages for functions they created.
  4. The documentation would be nice to have displayed like a normal R help file but for the short term I'll settle for a function that can display some sort of help for functions saved using `local`.  The syntax for this is still way up in the air.
