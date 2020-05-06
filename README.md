# Zulu JavaFX Homebrew

This is a bit of a fudge, since Zulu only makes their javafx bundle available as a zip file so we can't use pkgutil as normal.

* `brew tap quotidian-ennui/zulufx`
* `brew cask uninstall zulu8`
* `brew cask install zulufx8`
* `/usr/libexec/java_home -v 1.8` should now point to zulufx8 giving you access to the JavaFX stuffs.

# Notes

* Since `zulu8` from the homebrew version cask is basically equivalent to this, this is marked as conflicting with it.
