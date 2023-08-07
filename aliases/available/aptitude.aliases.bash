# shellcheck shell=bash
#
# -binaryanomaly

cite 'about-alias'
about-alias 'Aptitude and dpkg aliases for Ubuntu and Debian distros.'

# set aptitude aliases
function _set_pkg_aliases() {
	if _command_exists apt; then
		alias atts='aptitude search'
		alias attshow='aptitude show'
		alias attinst='sudo aptitude install -V'
		alias attupd='sudo aptitude update'
		alias attupg='sudo aptitude safe-upgrade -V'
		alias attupgd='sudo aptitude update && sudo aptitude safe-upgrade -V'
		alias attclean='sudo aptitude clean'
		alias attrm='sudo aptitude remove'
		alias attpurge='sudo aptitude purge'
		alias atty='sudo aptitude why'
		alias attyn='sudo aptitude why-not'

		alias chkup='/usr/lib/update-notifier/apt-check -p --human-readable'
		alias chkboot='cat /var/run/reboot-required'

		alias pkgfiles='dpkg --listfiles'
	fi
}

_set_pkg_aliases
