#!/usr/bin/env perl
$pdf_mode         = 3;
$latex            = 'uplatex -halt-on-error -kanji=utf-8 -synctex=1 %S';
$latex_silent     = 'uplatex -halt-on-error -interaction=batchmode';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
# @default_files    = ('rotate_specific_pages.tex');
@default_files    = ('combine_2in1.tex');
