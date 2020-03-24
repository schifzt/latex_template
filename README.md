# LaTeX template
+ [x] 1-column
+ [x] 2-column
+ [ ] slide(beamer)

## Install
```bash
git clone https://schifzt@github.com/schifzt/latex_template
rm -rf ./latex_template/.git
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
+ [ ] biblatexまたはnatbibの導入
    + 日本語対応がまだできていない
    + [`sieicej.bst`](https://www.ieice.org/ftp/)を使用している

+ [ ] Linux/Macではコンパイル可能だがWindowsできない問題
    + 恐らくbibの`sie`スタイルがuplatexに対応してないから？
    + `sie` --> `abbrv`にする
    + `uplatex` --> `platex`にする
        + その場合，`[uplatex]{"../setting/sie"}` --> `[platex]{"../setting/sie"}`


