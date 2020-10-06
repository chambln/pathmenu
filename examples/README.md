# Pathmenu example scripts

The prompts show the previously visited directory (`$OLDPWD`) behind the
present working directory (`$PWD`) relative to one another and separated
by a forward slash. Sounds complicated but play around with it and
you’ll see what I mean.

You can instruct pathmenu to revisit `$OLDPWD` by entering exactly one
hyphen (‘-’) character. In dmenu you may need to hit Shift + Return to
avoid selecting a file name that contain a hyphen.

Shellcheck complains about expressions and backslashes in single quotes,
but that’s exactly what we want since the expression is to be evaluated
later by eval(1) in pathmenu, hence the below directive.

    # shellcheck disable=SC2016,SC1004
