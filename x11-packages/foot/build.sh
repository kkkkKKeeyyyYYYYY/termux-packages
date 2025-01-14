TERMUX_PKG_HOMEPAGE=https://codeberg.org/dnkl/foot
TERMUX_PKG_DESCRIPTION="Fast, lightweight and minimalistic Wayland terminal emulator"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.20.0"
TERMUX_PKG_SRCURL=https://codeberg.org/dnkl/foot/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e3d2fd87ff3a8d5b849b6766374d1e660256c3194916e4ef75ab7382d8756fc5
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="fontconfig, freetype, libfcft, libpixman, libwayland, libxkbcommon, utf8proc"
TERMUX_PKG_BUILD_DEPENDS="libtllist, libwayland-protocols, scdoc, xdg-utils"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Ddocs=enabled
-Dterminfo-base-name=foot-extra
-Dtests=false
"

termux_step_pre_configure() {
	export PATH="$TERMUX_PREFIX/opt/libwayland/cross/bin:$PATH"

	# bionic provides this
	export CPPFLAGS+=" -D__STDC_ISO_10646__=201103L"
}
