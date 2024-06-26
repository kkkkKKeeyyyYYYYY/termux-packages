TERMUX_PKG_HOMEPAGE=https://lxqt.github.io
TERMUX_PKG_DESCRIPTION="LXQt dialog showing information about LXQt and the system"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.4.0"
TERMUX_PKG_SRCURL="https://github.com/lxqt/lxqt-about/releases/download/${TERMUX_PKG_VERSION}/lxqt-about-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=b5ec828bb3b7de2ed82708719843608f0acc855eb09a85cb1670bfa06049b12e
TERMUX_PKG_DEPENDS="libc++, qt5-qtbase, liblxqt"
TERMUX_PKG_BUILD_DEPENDS="lxqt-build-tools, qt5-qtbase-cross-tools"
TERMUX_PKG_AUTO_UPDATE=true