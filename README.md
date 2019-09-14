# NAME

pathmenu - browse directories and select files with dmenu

# SYNOPSIS

**pathmenu** \[*FILE*\]...

# DESCRIPTION

**pathmenu** is a simple **rc**(1) shell script (specifically Byron
Rakitzis’ dialect) that allows the user to select any number of files by
recursively browsing directories using **dmenu**(1).

For each *FILE*: if it’s a directory, start browsing there; otherwise
write its path to standard output without starting dmenu. With no
*FILE*, start browsing in the working directory. Selections are written
to standard output.

# EXAMPLES

Rename a file interactively (use with care):

    ifs=$nl mv `pathmenu `pathmenu

Get a path from the user as normal, but only suggest directories:

    fn ls { builtin ls $* | stest -d }
    path_given = ``$nl pathmenu

Browse \~/src/foo/, including hidden files, and edit the selected files:

    fn ls { builtin ls -A $* }
    vim ``$nl{pathmenu $home/src/foo}

Configure **xbindkeys**(1) to have Super-o start pathmenu in my home
directory and open the selection in the appropriate program:

    ;;; ~/.xbindkeysrc.scm
    (xbindkey '(mod4 o) "pathmenu | xargs -r -d '\n' xdg-open")

# AUTHOR

Written by Gregory Chamberlain \<chambln@protonmail.com\>.

# SEE ALSO

**rc**(1), **dmenu**(1), **stest**(1)
