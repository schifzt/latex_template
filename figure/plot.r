library(ggplot2)
setwd("/Users/admin/Dropbox/classes/RL2020/report/figure")
source(file = "./theme_formal.r")

# dfの作成
df <- read.csv("../program/out.csv", header = TRUE, sep = ",")
# df <- transform(df, mode = "full", stringsAsFactors = FALSE)

# 抽出
df2 <- subset(df, timeout == 1)

# # 文字列化してカテゴリ変数に変換
# df$p <- as.character(df$p)

# # レベル要素を指定する
# df$p <- ordered(df$p , levels = as.character(sort(as.double(unique(df$p)))))

g = ggplot(df,
           aes_string(x = "episode",
                      y =  "cum_r"))

# 以下4行はテンプレ（変更しない）
g <- g + theme_m()
g <- g +
  scale_x_continuous(sec.axis = dup_axis()) +
  scale_y_continuous(sec.axis = dup_axis())

g <- g +
  geom_line()
# geom_point()

g <-
  g + geom_point(
    data = df2,
    aes_string(x = "episode", y = "cum_r"),
    color = "blue",
    size = 2
  )

# g <- g + scale_y_log10()

g