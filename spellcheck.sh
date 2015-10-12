#!/bin/bash
for f in $(find _site -path _site/bower_components -prune -o -name "*.html") ; do aspell -H --personal=./.aspell.en.pws --ignore-case --add-html-skip=code list < $f | awk -v f=$f '{printf "%-70s: %-15s \n", f, $0}'; done
