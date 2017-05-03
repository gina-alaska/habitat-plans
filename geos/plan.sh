# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used in along with `pkg_origin`,
# and `pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
pkg_name=geos

# Required unless overridden by the `HAB_ORIGIN` environment variable.
# The origin is used to denote a particular upstream of a package.
pkg_origin=uafgina

# Required.
# Sets the version of the package.
pkg_version="3.6.1"

# Optional.
# The name and email address of the package maintainer.
# pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"

# Optional.
# An array of valid software licenses that relate to this package.
# Please choose a license from http://spdx.org/licenses/
pkg_license=('LGPL')

# Required.
# A URL that specifies where to download the source from. Any valid wget url
# will work. Typically, the relative path for the URL is partially constructed
# from the pkg_name and pkg_version values; however, this convention is not
# required.
pkg_source="http://download.osgeo.org/geos/${pkg_name}-${pkg_version}.tar.bz2"

# Optional.
# The resulting filename for the download, typically constructed from the
# pkg_name and pkg_version values.
pkg_filename="${pkg_name}-${pkg_version}.tar.bz2"

# Required if a valid URL is provided for pkg_source or unless do_verify() is overridden.
# The value for pkg_shasum is a sha-256 sum of the downloaded pkg_source. If you
# do not have the checksum, you can easily generate it by downloading the source
# and using the sha256sum or gsha256sum tools. Also, if you do not have
# do_verify() overridden, and you do not have the correct sha-256 sum, then the
# expected value will be shown in the build output of your package.
pkg_shasum="4a2e4e3a7a09a7cfda3211d0f4a235d9fd3176ddf64bd8db14b4ead266189fc5"

# Optional.
# An array of package dependencies needed at runtime. You can refer to packages
# at three levels of specificity: `origin/package`, `origin/package/version`, or
# `origin/package/version/release`.
pkg_deps=(core/glibc)

# Optional.
# An array of the package dependencies needed only at build time.
pkg_build_deps=(core/make core/gcc)

# Optional.
# An array of paths, relative to the final install of the software, where
# libraries can be found. Used to populate LD_FLAGS and LD_RUN_PATH for
# software that depends on your package.
pkg_lib_dirs=(lib)

# Optional.
# An array of paths, relative to the final install of the software, where
# headers can be found. Used to populate CFLAGS for software that depends on
# your package.
pkg_include_dirs=(include)

# Optional.
# An array of paths, relative to the final install of the software, where
# binaries can be found. Used to populate PATH for software that depends on
# your package.
pkg_bin_dirs=(bin)

# Optional.
# An array of paths, relative to the final install of the software, where
# pkg-config metadata (.pc files) can be found. Used to populate
# PKG_CONFIG_PATH for software that depends on your package.
# pkg_pconfig_dirs=(lib/pconfig)

# Optional.
# The command for the supervisor to execute when starting a service. You can
# omit this setting if your package is not intended to be run directly by a
# supervisor of if your plan contains a run hook in hooks/run.
# pkg_svc_run="bin/haproxy -f $pkg_svc_config_path/haproxy.conf"

# Optional.
# An associative array representing configuration data which should be gossiped to peers. The keys
# in this array represent the name the value will be assigned and the values represent the toml path
# to read the value.
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )

# Optional.
# An array of `pkg_exports` keys containing default values for which ports that this package
# exposes. These values are used as sensible defaults for other tools. For example, when exporting
# a package to a container format.
# pkg_exposes=(port ssl-port)

# Optional.
# An associative array representing services which you depend on and the configuration keys that
# you expect the service to export (by their `pkg_exports`). These binds *must* be set for the
# supervisor to load the service. The loaded service will wait to run until it's bind becomes
# available. If the bind does not contain the expected keys, the service will not start
# successfully.
# pkg_binds=(
#   [database]="port host"
# )

# Optional.
# Same as `pkg_binds` but these represent optional services to connect to.
# pkg_binds_optional=(
#   [storage]="port host"
# )

# Optional.
# An array of interpreters used in shebang lines for scripts. Specify the
# subdirectory where the binary is relative to the package, for example,
# bin/bash or libexec/neverland, since binaries can be located in directories
# besides bin. This list of interpreters will be written to the metadata
# INTERPRETERS file, located inside a package, with their fully-qualified path.
# Then these can be used with the fix_interpreter function.
# pkg_interpreters=(bin/bash)

# Optional.
# The user to run the service as. The default is hab.
# pkg_svc_user="hab"

# Optional.
# The group to run the service as. The default is hab.
# pkg_svc_group="$pkg_svc_user"

# Required for core plans, optional otherwise.
# A short description of the package. It can be a simple string, or you can
# create a multi-line description using markdown to provide a rich description
# of your package.
pkg_description="GEOS (Geometry Engine - Open Source)"

# Required for core plans, optional otherwise.
# The project home page for the package.
pkg_upstream_url="http://trac.osgeo.org/geos"
