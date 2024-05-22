TERMUX_PKG_HOMEPAGE=https://gmic.eu
TERMUX_PKG_DESCRIPTION="Full-featured framework for image processing"
TERMUX_PKG_LICENSE="CeCILL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.3.6"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://gmic.eu/files/source/gmic_$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=9d2d07a39040ed6abacafd49c16e746520631a16dc9215b161d1dc3ed0dd23fe
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="fftw, imath, libc++, libcurl, libjpeg-turbo, libpng, libtiff, openexr, zlib"
TERMUX_PKG_BUILD_DEPENDS="graphicsmagick"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	return
}

termux_step_make() {
	cd src/
	make STRIP="$STRIP" OPT_CFLAGS="$CXXFLAGS" cli cli_gm
}

termux_step_make_install() {
	cp src/gmic $TERMUX_PREFIX/bin/
	cp src/gmic-gm $TERMUX_PREFIX/bin/
	cp man/gmic.1.gz $TERMUX_PREFIX/share/man/man1/
	cp man/gmic.1.gz $TERMUX_PREFIX/share/man/man1/gmic-gm.1.gz
}
