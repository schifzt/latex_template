# LaTeX template
+ 2-column: underconstruction.
+ slide(beamer): underconstruction.
+ 1-column: yet.

## Install
```bash
git clone https://schifzt@github.com/schifzt/latex_template
mv ./latex_template/paper/ ./new_project
rm -rf./latex_template --interactive=never 
```

## "paper" template
```
./
├─program
│  └─data
│      └─fig
└─setting
```
+ 2-columnのテンプレート
+ 電子情報通信学会のテンプレートを改造
+ ソースコードとtexファイルを一括管理
    + データ生成プログラム：`program` dirに置いてデータは`data` dir.に保存する
    + グラフ描画プログラム：`data` dir.に置いてグラフは`fig` dir.に保存する
+ Linux/Macではコンパイル可能だがWindowsできない
    + 恐らくbibの`sie`スタイルがuplatexに対応してないから
    + `sie` --> `abbrv`にする
    + `uplatex` --> `platex`にする
        + その場合，`[uplatex]{"../setting/sie"}` --> `[platex]{"../setting/sie"}`


