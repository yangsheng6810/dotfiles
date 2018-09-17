#!/bin/sh
DOI=$1
curl -LH "Accept: text/bibliography; style=bibtex" "http://dx.doi.org/${DOI}"
