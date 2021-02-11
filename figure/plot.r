library(tidyquant)
library(dplyr)
library(ggplot2)

setwd("pass/to/the/directory/")
source(file = "./theme_m.r")

# dfの作成
df <- read.csv("../program/out.csv", header = TRUE, sep = ",")
# df <- transform(df, mode = "full", stringsAsFactors = FALSE)

# 抽出
df2 <- subset(df, timeout == 1)

# もし列があれば処理する
if(any(colnames(df) == "p")){
    df$p <- as.factor(df$p)
}

# 文字列化してカテゴリ変数に変換
# df$p <- as.character(df$p)
# レベル要素を指定する
# df$p <- ordered(df$p , levels = as.character(sort(as.double(unique(df$p)))))
df$p <- as.factor(p)

# --------------------
# main
# --------------------

# 以下5行はテンプレ（変更しない）
g <- ggplot()
g <- g + theme_m()
g <- g +
  scale_x_continuous(sec.axis = dup_axis()) +
  scale_y_continuous(sec.axis = dup_axis())

g <- g + geom_line()

# 抽出したdf2をハイライト
g <- g +
  geom_point(data = df2, aes_string(x = "SN", y = target, shape = flex, color = "type"), size = 4) +
  scale_shape_manual(values = c(2, 4, 1, 0),
                     labels = c("p = 64","p = 128","p = 256")) +
  scale_color_manual(values = c(mred, mdeepblue))
# g <- g + guides(colour=FALSE)


# 移動平均
# g <- g + geom_ma(ma_fun = SMA, n = 10, color = "black", linetype="solid")

# g <- g + scale_y_log10()

g