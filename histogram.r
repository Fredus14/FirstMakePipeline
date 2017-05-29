library(dplyr)
readLines("words.txt") %>% 
        nchar() %>% 
        table() %>% 
        write.table("histogram.tsv",
                    sep = "\t", row.names = FALSE, quote = FALSE)