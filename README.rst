pathmenu
========

This is a simple `rc`_ shell script that allows the user to select any
number of files by recursively browsing directories in dmenu.

Dependencies
------------

To execute the script, you need to have installed *rc*, specifically
Byron Rakitzis' dialect. I wrote a short guide on how to do that
`here`_.

Usage
-----

::

   pathmenu [FILE ...]

If no arguments are passed, pathmenu starts in the working directory.
Selections made are printed to the standard output.

Hints:

-  In dmenu, press CTRL+Enter to make multiple selections.
-  To specify non-existent directories, type forward slashes into dmenu.

.. _rc: https://9fans.github.io/plan9port/man/man1/rc.html
.. _here: https://cosine.blue/2019-06-26-rc-shell-setup.html#install-the-rc-shell
