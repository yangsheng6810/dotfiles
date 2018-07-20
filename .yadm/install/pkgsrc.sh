#!/bin/sh
#######################
# to install a package, run
# `bmake install clean clean-depends`
# in `pkgsrc/<pkg-group>/<pkg-name>`
######################
cvs -danoncvs@anoncvs.netbsd.org:/cvsroot checkout pkgsrc
cd pkgsrc/bootstrap
./bootstrap --unprivileged

