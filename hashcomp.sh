#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: hashcomp file1 file2"
    echo "Returns: Hash values of both files, if not equal, the common hash value of both files else"
    exit 1
fi

FIRSTHASH=$(sha256sum $1)
SECONDHASH=$(sha256sum $2)

if [ "$FIRSTHASH" = "$SECONDHASH" ]; then
    echo $FIRSTHASH, $2
else
    echo $FIRSTHASH
    echo $SECONDHASH
fi
