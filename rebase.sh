#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> d938276... git-rebase 1
=======
    echo "Next parameter: $param"
>>>>>>> 1428c91... git-rebase 2
    count=$(( $count + 1 ))
done

echo "====="
