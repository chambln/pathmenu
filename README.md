# pathmenu

This is a simple [*rc* shell][1] script that allows the user to select
any number of files and folders by interactively browsing directories.

[1]: https://9fans.github.io/plan9port/man/man1/rc.html

## Dependencies

To execute the script, you need to have *rc* installed.
The `plan9port` and `9base` packages satisfy that, but for interactive
use of *rc* I recommend [installing Byron Rakitzis'
reimplementation][2].

[2]: https://cosine.blue/2019-06-26-rc-shell-setup.html#install-the-rc-shell

## Usage

    pathmenu [directory ...]

If no arguments are passed, pathmenu starts in the working directory.

Hint: In dmenu, press CTRL+Enter to make multiple selections.
