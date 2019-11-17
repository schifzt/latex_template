#!/usr/bin/env perl
$pdf_mode         = 3;
$latex            = 'uplatex -halt-on-error -kanji=utf-8 -synctex=1 %S';
$latex_silent     = 'uplatex -halt-on-error -interaction=batchmode';
$bibtex           = 'pbibtex';
# $bibtex           = 'upbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
# $pvc_view_file_via_temporary = 0;
