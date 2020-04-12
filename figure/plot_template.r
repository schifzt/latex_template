#
#
#


library(ggplot2)
source(file = "./theme_m.r")

# dfの作成
df <- read.csv("./pca_full.csv", header = TRUE, sep = ",")
df <- transform(df, mode = "full", stringsAsFactors = FALSE)

# 抽出
df <- subset(df, p == 128 | 256 | 512 | 1024)

# 文字列化してカテゴリ変数に変換
df$p <- as.character(df$p)

# レベル要素を指定する
df$p <- ordered(df$p , levels = as.character(sort(as.double(unique(df$p)))))

g = ggplot(df,
           aes_string(
             x = "beta",
             y =  target,
             group = "p",
             color = "data_type"
           ))

# 以下4行はテンプレ（変更しない）
g <- g + theme_m()
g <- g + 
  scale_x_continuous(sec.axis = dup_axis()) +
  scale_y_continuous(sec.axis = dup_axis())

g <- g + 
  geom_point(aes_string(shape = "p"), size = 3) +
  scale_shape_manual(values = c(20, 4, 2, 1, 0))

# 曲線を定義
bbp_transition <- function(x) {
  return(x+1)
}
# 曲線をプロット
g <- g + stat_function(fun = f(x), geom = "line", color = "black")

g