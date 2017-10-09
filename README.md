Setup a nice development environment

run `./setup.sh` to clone repositories containing configuration files and install custom bash.
The configuration files get symlinked into ~/ and the custom bash installed to
~/bin

This adds a line to .profile adding ~/bin to the beginning of PATH. This is
because not all distros do this. If you don't like that it adds it twice, just
remove the line.
