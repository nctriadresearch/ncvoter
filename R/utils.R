
# Check for Counties

return_valid_county <- function(x){
	if(is.character(x) &&  is.na(suppress_all(as.numeric(x)))){
		x <- toupper(x)

		if(x %in% county_codes[["county_name"]]){
			dplyr::pull(dplyr::filter(county_codes, county_name == x), county_number)
		} else{
			stop("You have not entered a valid county name.")
		}
		} else{
			x <- suppress_all(as.numeric(x))

			x <- as.integer(round(x))

			if(!x %in% 1:100){
				stop("Please pass a valid code for country (i.e. 1-100)")
			}
			x
		}
}


suppress_all <- function(x){
	x <- suppressMessages(suppressWarnings(x))
	x
}
