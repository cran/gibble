
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](http://badges.herokuapp.com/travis/mdsumner/gibble?branch=master&env=BUILD_NAME=trusty_release&label=ubuntu)](https://travis-ci.org/mdsumner/gibble)
[![Build
Status](http://badges.herokuapp.com/travis/mdsumner/gibble?branch=master&env=BUILD_NAME=osx_release&label=osx)](https://travis-ci.org/mdsumner/gibble)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/mdsumner/gibble?branch=master&svg=true)](https://ci.appveyor.com/project/mdsumner/gibble)
[![Coverage
Status](https://img.shields.io/codecov/c/github/mdsumner/gibble/master.svg)](https://codecov.io/github/mdsumner/gibble?branch=master)
[![CRAN
status](https://www.r-pkg.org/badges/version/gibble)](https://cran.r-project.org/package=gibble)
[![cran
checks](https://cranchecks.info/badges/worst/gibble)](https://cran.r-project.org/web/checks/check_results_gibble.html)
[![Downloads](http://cranlogs.r-pkg.org/badges/gibble?color=brightgreen)](http://www.r-pkg.org/pkg/gibble)

# gibble

The goal of gibble is to provide a straightforward map of path-based
data structures. Paths are connected linear sequences of coordinates,
otherwise known as *lines*. Structured spatial data includes *objects*
composed of *paths*, which are islands, holes within island, lines, and
points. Polygons require an extra grouping level *subobject* to ensure
holes are nested within their island, but this is ignored for other
types.

The map is simply a record of the path, its size (number of vertices and
geometric dimension), its groupings (which object and subobject), and
its type (something like “polygon”, “line”, “point”). Internally a bare
functionality works with matrices and all numeric values, but gibble
then turns this set of values into a data frame where entities can be
labelled arbitrarily.

Sequential linear structures are not optimal for many operations when
working with spatial data, and in particular they cannot describe
surfaces in 3D geometry because they are inherently, *topologically*,
one-dimensional. Gibble provides a simple bridge between path and
primitive types, which do generalize to any topological dimension.
Gibble considers a point to be a degenerate path, so that the path
concept is consistent for any *simple features*-analogue.

The original impetus for gibble was to illustrate how basic topological
editing might be provided via the [mapedit
package](https://CRAN.R-project.org/package=mapedit), and is used to
consolidate the geometry decomposition tools in
[silicate](https://github.com/hypertidy/silicate).

-----

Please note that this project is released with a [Contributor Code of
Conduct](https://github.com/mdsumner/gibble/blob/master/CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.
