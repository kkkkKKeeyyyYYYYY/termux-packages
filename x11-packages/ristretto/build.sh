TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/ristretto/start
TERMUX_PKG_DESCRIPTION="The Ristretto Image Viewer is an application that can be used to view, and scroll through images."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.13.2"
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/apps/ristretto/${TERMUX_PKG_VERSION%.*}/ristretto-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=779f5ede3016019eec01d64a025583078d3936e35d4288ec2e8433494d757dd9
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="file, gdk-pixbuf, glib, gtk3, libcairo, libexif, libx11, libxfce4ui, libxfce4util, pango, xfconf"
TERMUX_PKG_RECOMMENDS="tumbler"
