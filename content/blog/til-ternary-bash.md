+++
date = "2016-10-08T10:10:38-07:00"
draft = false
title = "TIL: ternary in bash"

+++

I have been working with shell scripts for 4-5 years now, and I only recently saw, for the first time, someone shortcut the classic if/else/then statements:

``` bash
[ $condition == "true" ] && echo "true" || echo "false"
```

It took me a few minutes of staring at it to make sure it works the way I think it works.

Having seen this though, I am of the opinion that it's probably better to be a bit more verbose:

``` bash
if [ $condition == "true" ]; then
  echo "true"
else
  echo "false"
fi
```

I think it's more natural, easier to read and understand, better for the next guy/gal who needs to read and decipher your script.

