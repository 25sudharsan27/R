library(readr)
library(scales)
data = read.csv("data.csv")
View(data)

data


# first Analysis 

df <- data.frame(Date = as.Date(data$Invoice.Date, format = "%m/%d/%Y"), Value = data$Total.Sales)
# Convert Date column to year-month format

df$Date <- as.yearmon(df$Date)

df$Value <- as.numeric(df$Value)

# Filter and summarise
d <- df %>%
  group_by(Date) %>%
  summarise(total_value = sum(Value, na.rm = TRUE))


# Assuming 'd' contains the summarized data
ggplot(d, aes(x = Date, y = total_value, group = 1)) +
  geom_line(color = "white") +
  geom_point(color = "skyblue") + # Add points for better visualization
  labs(x = "Date", y = "Total Value") +
  scale_y_continuous(labels = scales::dollar_format(scale = 1e-0)) +  # Adjust scale as needed
  theme_dark() + # Set the theme to dark
  theme(panel.background = element_rect(fill = "black"),
        panel.grid.major = element_blank(),  # Remove major grid lines
        panel.grid.minor = element_blank(),  # Remove minor grid lines
        panel.border = element_blank())


# objective 2

df1 = data.frame(Date = as.Date(data$Invoice.Date, format = "%m/%d/%Y"),Retailers = data$Retailer,Total_Sales= data$Total.Sales)
df1

df_agg <- df1 %>%
  group_by(Retailers) %>%
  summarise(Total_Earnings = sum(Total_Sales)) %>%
  arrange(desc(Total_Earnings))
# Analyze the Retailers Earnings with Total Earnings using Pie Chart 

ggplot(df_agg, aes(x = "", y = Total_Earnings, fill = Retailers)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Retailers' Distribution",
       fill = "Retailers",
       y = "Total Earnings")


# Objective 3


df2 = data.frame(Date = as.Date(data$Invoice.Date, format = "%m/%d/%Y"),Region = data$Region,Total_Sales= data$Total.Sales)
df2.head(10)

df_agg <- df2 %>%
  group_by(Region) %>%
  summarise(Total_Earnings = sum(Total_Sales)) %>%
  arrange(desc(Total_Earnings))
# Analyze the Retailers Earnings with Total Earnings using Pie Chart 

ggplot(df_agg, aes(x = "", y = Total_Earnings, fill = Region)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Region's Distribution",
       fill = "Region",
       y = "Total Earnings")



# Objective 4


df3 = data.frame(Date = as.Date(data$Invoice.Date, format = "%m/%d/%Y"),Sales_method = data$Sales.Method,Total_Sales= data$Total.Sales)
df3

df_agg1 <- df3 %>%
  group_by(Sales_method) %>%
  summarise(Total_Earnings = sum(Total_Sales)) %>%
  arrange(desc(Total_Earnings))
# Analyze the Retailers Earnings with Total Earnings using Pie Chart 

ggplot(df_agg1, aes(x = "", y = Total_Earnings, fill = Sales_method)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "right") +
  labs(title = "Sales method Distribution",
       fill = "Sales_Method",
       y = "Total Earnings")





