#!/bin/sh
# Copyright © 2012 Bart Massey
# [This program is licensed under the "MIT License"]
# Please see the file COPYING in the source
# distribution of this software for license terms.
TMP="/tmp/i7gh-release.$$"
trap "rm -rf $TMP" 0 1 2 3 15
cp -a *.materials/Release $TMP
[ -d *.materials/Figures ] && cp -a *.materials/Figures $TMP
git checkout gh-pages || exit 1
git clean -df
#rm -rf *.inform *.materials
cp -a $TMP/. .
git add .
MASTER=`git show-ref heads/master | awk '{print $1;}'`
MSG="web version of $MASTER from master"
git commit -am "$MSG"
git push
git checkout master
git clean -df
#rm -rf interpreter
