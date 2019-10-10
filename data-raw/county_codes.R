## code to prepare `county_codes` dataset goes here


county_codes <- read.csv(file = "data-raw/county-codes.csv",
												 header = FALSE, stringsAsFactors = FALSE)

colnames(county_codes) <- c("county_number", "county_name")

county_codes$county_number <- as.numeric(substr(county_codes$county_number, 1,2))

county_codes$county_name <- trimws(county_codes$county_name, "both")

usethis::use_data(county_codes, overwrite = T)

