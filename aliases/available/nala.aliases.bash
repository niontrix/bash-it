# shellcheck shell=bash
#
# -binaryanomaly

cite 'about-alias'
about-alias 'Nala aliases for Ubuntu and Debian distros.'

# set apt aliases
function _set_pkg_aliases() {
	if _command_exists apt; then
		alias nas='nala search'
		alias nashow='nala show'
		alias nainst='sudo nala install -V'
		alias naupd='sudo nala update'
		alias naupg='sudo nala upgrade -V'
		alias narm='sudo nala remove'
		alias napurge='sudo nala purge'
	fi
}

_set_pkg_aliases
