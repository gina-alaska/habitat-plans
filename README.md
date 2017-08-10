# habitat-plans

Habitat packages are self contained.  GINA has rails apps that need custom things not available or not compiled with options we want in the https://github.com/habitat-sh/core-plans we have these habitat-plans for use in our Habitat packages.

These are used
* goes, libtiff & proj were aiming to be part of glynx but then we found [JarvusInnovations](https://github.com/JarvusInnovations/habitat-plans)
* imagemagic - used by all the rails apps by GINA using habitat (icewatch, glynx, ubermap)


`hab studio enter`
* what you will see is only what was in the directory that you entered - it will look for a .bah
* `build (path to hab dir for what you want to build)`
  * creates a new .hab artifact for you to put up somewhere (s3, your artifactory, or such)
  * see `ls results/` after the build
    * `results/last_build.env`
* `source results/last_build.env; echo $pkg_artifact` - doing this allows you to script things.. like
* `aws s3 cp results/$pkg_artifact`
* See the `/hab/cache/` dir for src files downloaded, keys brought down, and the downloaded&built artifacts (the .hart) files.

Setup rapidly captured notes for Habitate - https://gist.github.com/dayne/02cb1fd8d66dc74d41f325c31aed3b2b
