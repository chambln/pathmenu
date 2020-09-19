# pathmenu

[![builds.sr.ht status](https://builds.sr.ht/~chambln/pathmenu.svg)](https://builds.sr.ht/~chambln/pathmenu?)

pathmenu is a purely POSIX and shellcheck-verified shell script for
using dmenu to browse the filesystem and select files.  It could be used
as part of a larger program or interactively in the shell.

# Dependencies

 - [**dmenu**(1)](https://tools.suckless.org/dmenu/)

It is very easy to edit pathmenu and swap out dmenu for something else
like **rofi**(1), **fzf**(1), even **vipe**(1) from moreutils, or any
other program that can behave as a linewise filter.

``` diff
-    done | dmenu -p "$PWD"/ "$@" | while IFS= read -r target
+    done | fzf --prompt "$PWD/ " "$@" | while IFS= read -r target
```

When using **dmenu**(1), non-existent files can be ‘selected’ using shift + enter.

# Installation

    make install
    
Optionally specify a prefix; for example:

    make PREFIX=~/.local install

# Usage

See **pathmenu**(1).
