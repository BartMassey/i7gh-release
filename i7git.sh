#!/bin/sh
# Copyright © 2012 Bart Massey
# [This program is licensed under the "MIT License"]
# Please see the file COPYING in the source
# distribution of this software for license terms.
PGM="`basename $0`"
COUNT="`ls -d *.inform | wc -l`"
if [ "$COUNT" -ne 1 ]
then
    echo "$PGM: error on *.inform" >&2
    exit 1
fi
if [ -d .git ]
then
    echo "$PGM: .git already exists" >&2
    exit 1
fi
NAME="`basename *.inform .inform`"
echo "$NAME"
git init
cat >.gitignore <<'EOF'
/.gitignore
/*.inform/*
!/*.inform/Source/
/*.materials/Release/
EOF
git add "$NAME.inform/Source/story.ni"
git commit -m "$NAME"
