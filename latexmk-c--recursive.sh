#!/bin/sh

find . -type f -name '*.aux' -exec rm {} +
find . -type f -name '*.bcf' -exec rm {} +
find . -type f -name '*.blg' -exec rm {} +
find . -type f -name '*.dvi' -exec rm {} +
find . -type f -name '*.out' -exec rm {} +
find . -type f -name '*.log' -exec rm {} +
find . -type f -name '*.xml' -exec rm {} +
find . -type f -name '*.gz' -exec rm {} +
find . -type f -name '*.fdb_latexmk' -exec rm {} +
