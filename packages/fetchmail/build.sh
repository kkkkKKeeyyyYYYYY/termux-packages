TERMUX_PKG_HOMEPAGE=https://www.fetchmail.info/
TERMUX_PKG_DESCRIPTION="A remote-mail retrieval utility"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_LICENSE_FILE="COPYING"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="6.5.0"
TERMUX_PKG_SRCURL=https://sourceforge.net/projects/fetchmail/files/branch_${TERMUX_PKG_VERSION:0:3}/fetchmail-$TERMUX_PKG_VERSION.tar.xz
TERMUX_PKG_SHA256=42611aea4861a5311e5116843f01c203dceadf440bf2eb1b4a43a445f2977668
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ssl=$TERMUX_PREFIX"
TERMUX_PKG_RM_AFTER_INSTALL="
bin/fetchmailconf
share/man/man1/fetchmailconf.1
local/lib/python*
"
