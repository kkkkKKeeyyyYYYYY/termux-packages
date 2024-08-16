TERMUX_PKG_HOMEPAGE=https://commons.apache.org/proper/commons-lang/
TERMUX_PKG_DESCRIPTION="A host of helper utilities for the java.lang API"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="3.16.0"
TERMUX_PKG_SRCURL=https://dlcdn.apache.org/commons/lang/source/commons-lang3-${TERMUX_PKG_VERSION}-src.tar.gz
TERMUX_PKG_SHA256=8fa1f76d5adcbbcb6f94c092df89d11cdac3b2de6e159d344fc640565c321487
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="openjdk"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	cd src/main/java
	javac -encoding UTF-8 -source 1.8 -target 1.8 $(find . -name "*.java")
	_BUILD_JARFILE="$TERMUX_PKG_BUILDDIR/commons-lang3.jar"
	rm -f "$_BUILD_JARFILE"
	jar cf "$_BUILD_JARFILE" $(find . -name "*.class")
}

termux_step_make_install() {
	mkdir -p $TERMUX_PREFIX/share/java
	install -Dm600 "$_BUILD_JARFILE" $TERMUX_PREFIX/share/java/
}
