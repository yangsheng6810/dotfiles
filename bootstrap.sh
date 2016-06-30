#!/bin/sh
for i in `git ls-tree --name-only master | grep -v 'bootstrap.sh'`;do
    echo "ln -s ${i} ~/${i}"
    ln -s ${i} ~/${i}
done
