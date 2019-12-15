# NAME

pathmenu - browse directories and select files with dmenu

# SYNOPSIS

**pathmenu** \[*DIRECTORY*\]...

# DESCRIPTION

**pathmenu** is a simple POSIX shell script that allows the user to
select any number of files by recursively browsing directories using
**dmenu**(1).

With no *DIRECTORY*, start in the working directory. Selections are
written to standard output.

# EXAMPLES

Interactively move files (use with care):

    IFS='
    ' mv -i -- $(pathmenu -p Source) $(pathmenu -p Destination)

Suggest only directories:

    pathmenu -d

Browse \~/src/foo/, including hidden files, and edit the selected files:

    IFS='
    ' $EDITOR $(pathmenu -a ~/src/foo)

Configure **xbindkeys**(1) to have Super-o start pathmenu in my home
directory and open the selection in the appropriate program:

    ;;; ~/.xbindkeysrc.scm
    (xbindkey '(mod4 o) "IFS='\n' xdg-open $(pathmenu)")

# AUTHOR

Written by Gregory Chamberlain \<chambln@protonmail.com\>.

# SEE ALSO

**dicemenu**(1), **dmenu**(1)
