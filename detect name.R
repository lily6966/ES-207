Detectname  <- function(y){
  daily.site %>% filter(str_detect(Name, y)) %>% group_by(site = as.factor(site), year=floor_date(Date1, "year")) %>%
    summarize(Mean = mean(o3, na.rm = TRUE),Median = median(o3, na.rm = TRUE),Max = max(o3, na.rm = TRUE),Min = min(o3, na.rm = TRUE))
} 
