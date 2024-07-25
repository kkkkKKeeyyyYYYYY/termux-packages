TERMUX_PKG_HOMEPAGE=https://github.com/elves/elvish
TERMUX_PKG_DESCRIPTION="A friendly and expressive Unix shell"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.20.1"
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/elves/elvish/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=6a6006015f44def98676eaed611702b000d66838c0e76da572d517d9bde5c388
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/elves
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/elves/elvish

	cd "$GOPATH"/src/github.com/elves/elvish/cmd/elvish
	go build
}

termux_step_make_install() {
	install -Dm700 \
		"$GOPATH"/src/github.com/elves/elvish/cmd/elvish/elvish \
		"$TERMUX_PREFIX"/bin/elvish
}
