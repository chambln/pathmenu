# Pathmenu example scripts

You can instruct pathmenu to revisit `$OLDPWD` by entering exactly one
hyphen (‘-’) character. In dmenu you may need to hit Shift + Return to
avoid selecting a file name that contains a hyphen.

Shellcheck complains about expressions and backslashes in single quotes,
but that’s exactly what we want since the expression is to be evaluated
later by eval(1) in pathmenu, hence the below directive.

    # shellcheck disable=SC2016,SC1004
