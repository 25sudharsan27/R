set.seed(123)                                                     # Set seed for reproducibility
data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)           # Create example data
colnames(data) <- paste0("col", 1:10)                             # Column names
rownames(data) <- paste0("row", 1:10)

heatmap(data)                                                     # Apply heatmap function
heatmap(data, Rowv = NA, Colv = NA)                               # Remove dendrogram
my_colors <- colorRampPalette(c("cyan", "deeppink3"))             # Manual color range
heatmap(data, col = my_colors(100))                               # Heatmap with manual colors
install.packages("reshape")                                       # Install reshape package
library("reshape")                                                # Load reshape package
data_melt <- melt(data)                                           # Reorder data
head(data_melt)                                                   # First six rows of data
#   X1   X2        value
# row1 col1 -14.15254153
# row2 col1  -6.88199228
# row3 col1   2.44972363
# row4 col1  -0.04076637
# row5 col1   3.54613210
# row6 col1  -2.57462492
install.packages("ggplot2")                                       # Install ggplot2 package
library("ggplot2")                                                # Load ggplot2 package
ggp <- ggplot(data_melt, aes(X1, X2)) +                           # Create heatmap with ggplot2
  geom_tile(aes(fill = value))
ggp                                                               # Print heatmap
ggp + scale_fill_gradient(low = "green", high = "black")          # Manual colors of heatmap
install.packages("plotly")                                        # Install plotly package
library("plotly")                                                 # Load plotly package
plot_ly(z = data, type = "heatmap")                               # Apply plot_ly function
plot_ly(z = data, colorscale = "Greys", type = "heatmap")         # Manual colors
