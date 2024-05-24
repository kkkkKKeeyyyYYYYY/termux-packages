TERMUX_PKG_HOMEPAGE=https://exiv2.org/
TERMUX_PKG_DESCRIPTION="Exif, Iptc and XMP metadata manipulation library and tools"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.27.7
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/Exiv2/exiv2/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=551b1266e3aabd321f6d555dccd776128ee449d5039feafee927a1f33f7a9753
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_DEPENDS="libc++, libexpat, zlib"
TERMUX_PKG_BREAKS="exiv2-dev"
TERMUX_PKG_REPLACES="exiv2-dev"

# Do not enable EXIV2_ENABLE_VIDEO, which is affected by CVE-2022-371{8,9}.
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DEXIV2_ENABLE_VIDEO=OFF
-DEXIV2_BUILD_SAMPLES=ON
"
