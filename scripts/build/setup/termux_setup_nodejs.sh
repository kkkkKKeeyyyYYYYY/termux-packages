termux_setup_nodejs() {
	# Use LTS version for now
	local NODEJS_VERSION=18.16.1
	local NODEJS_FOLDER

	if [ "${TERMUX_PACKAGES_OFFLINE-false}" = "true" ]; then
		NODEJS_FOLDER=${TERMUX_SCRIPTDIR}/build-tools/nodejs-${NODEJS_VERSION}
	else
		NODEJS_FOLDER=${TERMUX_COMMON_CACHEDIR}/nodejs-$NODEJS_VERSION
	fi

	if [ "$TERMUX_ON_DEVICE_BUILD" = "false" ]; then
		if [ ! -x "$NODEJS_FOLDER/bin/node" ]; then
			mkdir -p "$NODEJS_FOLDER"
			local NODEJS_TAR_FILE=$TERMUX_PKG_TMPDIR/nodejs-$NODEJS_VERSION.tar.xz
			termux_download https://nodejs.org/dist/v${NODEJS_VERSION}/node-v${NODEJS_VERSION}-linux-x64.tar.xz \
				"$NODEJS_TAR_FILE" \
				ecfe263dbd9c239f37b5adca823b60be1bb57feabbccd25db785e647ebc5ff5e
			tar -xf "$NODEJS_TAR_FILE" -C "$NODEJS_FOLDER" --strip-components=1
		fi
		export PATH=$NODEJS_FOLDER/bin:$PATH
	else
		local NODEJS_PKG_VERSION=$(bash -c ". $TERMUX_SCRIPTDIR/packages/nodejs/build.sh; echo \$TERMUX_PKG_VERSION")
		if [[ "$(dpkg-query -W -f '${db:Status-Status}\n' nodejs 2>/dev/null)" != "installed" ]]; then
			echo "Package 'nodejs' is not installed."
			echo "You can install it with"
			echo
			echo "  pkg install nodejs"
			echo
			echo "or build it from source with"
			echo
			echo "  ./build-package.sh nodejs"
			echo
			exit 1
		fi
	fi
}
