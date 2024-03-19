library(tidyverse)

csv_files<-list.files(path="RESULTS FOLDER",
                      pattern="*.csv", 
                      full.names = T) %>% 
  map_df(~read_csv(.))

Int_df<- csv_files%>% select(Label,Ch1,starts_with("RawIntDen1"),starts_with("Area"),id=...1)
Int_df<- as.data.frame(Int_df)

#test de canales separados
raw_ch1<- filter(Int_df, Ch1==1)
raw_ch2<- filter(Int_df, Ch1==2)
raw_ch3<- filter(Int_df, Ch1==3)
raw_ch4<- filter(Int_df, Ch1==4)
 

write.csv(Int_df,"resultsRaw.csv", row.names = FALSE)

write.csv(raw_ch1,"results_ch1Raw.csv", row.names = FALSE)
write.csv(raw_ch2, "results_ch2Raw.csv", row.names = FALSE)
write.csv(raw_ch3, "results_ch3Raw.csv", row.names = FALSE)
write.csv(raw_ch4, "results_ch4Raw.csv", row.names = FALSE)
