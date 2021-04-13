library(readr)
daily.site$Date1 <- as.Date(parse_datetime(daily.site1$date, "%m/%d/%y"))
daily.site