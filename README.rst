========
pathmenu
========

This is a simple `rc shell`_ script that allows the user to select any
number of files by recursively browsing directories in dmenu.

Dependencies
============

To execute the script, you need to have *rc* installed. The
``plan9port`` and ``9base`` packages satisfy that, but for interactive
use of *rc* I recommend `installing Byron Rakitzis’ reimplementation`_.

Usage
=====

::

   pathmenu [FILE ...]

If no arguments are passed, pathmenu starts in the working directory.
Selection made are printed to the standard output.

Hints:

-  In dmenu, press CTRL+Enter to make multiple selections.
-  To specify non-existent directories, type forward slashes into dmenu.

.. _rc shell: https://9fans.github.io/plan9port/man/man1/rc.html
.. _installing Byron Rakitzis’ reimplementation: https://cosine.blue/2019-06-26-rc-shell-setup.html#install-the-rc-shell
