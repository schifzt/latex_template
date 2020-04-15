# LaTeX template
+ [x] 1-column
+ [x] 2-column
+ [ ] slide(beamer)

## Install
```bash
git clone https://schifzt@github.com/schifzt/latex_template && \
rm -rf ./latex_template/.git && \
mv ./latex_template ./new_project
```

## "paper" template
```
./
├── fig/
│   ├── figure.pdf
│   └── plot.r
├── paper/
│   ├── 1-column.tex
│   ├── 2-column.tex
├── program/
│   ├── data.csv
│   └── place_holder.py
└── setting/
```
+ 1-columnと2-columnの2つのテンプレートを用意
+ ソースコードとtexファイルを一括管理できる
    + データ生成プログラム：`program/`に置く．データもここに生成する．
    + グラフ描画プログラム：`fig/`に置く．データは相対パスで`program/`を参照する．
  
## TODO
+ [ ] Linux/MacOSではコンパイル可能だがWindowsでできない問題
    + 恐らくbibの`sie`スタイルがuplatexに対応してないから？
    + `sie` --> `abbrv`にする
    + `uplatex` --> `platex`にする
        + その場合，`[uplatex]{"../setting/sie"}` --> `[platex]{"../setting/sie"}`

## MWE for biblatex
+ `bib`ファイルのauthorフィールドを`author = {{二郎 系}},`とする．`"二郎 系"`や`{二郎 系}`ではダメ．
    + https://tex.stackexchange.com/questions/109064/is-there-a-difference-between-and-in-bibtex
```tex
\usepackage[backend = biber, bibstyle = phys]{biblatex}
\bibliography{refs.bib}
## 本文
\printbibliography[title=参考文献]
\end{document}
```
+ [`sieicej.bst`](https://www.ieice.org/ftp/)を使用したほうが楽なときもある．



