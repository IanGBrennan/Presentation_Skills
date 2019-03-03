# install.packages("ggplot2")
# install.packages("gridExtra")

library(ggplot2)
library(gridExtra)


sepal.trends <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width, color=Species)) +
  geom_point(size=5) + stat_smooth(method="loess")

petal.trends <- ggplot(data=iris, aes(x = Petal.Length, y = Petal.Width, color=Species)) +
  geom_point(size=5) + stat_smooth(method="loess")

grid.arrange(sepal.trends, petal.trends, nrow=2)