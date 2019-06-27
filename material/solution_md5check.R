# Script by Tobias Heycke (tobias.heycke@gesis.org)
# function to compare given md5 checksum with md5 sum of a file

# Set working directory to location of csv file for code to work

# packages used: tools from R base 



checkDataMD5 <- function(md5, data_file){
  ifelse(tools::md5sum(data_file) == md5
         , "md5 check passed"
         , stop("md5 sums unequal"))
}

# run the function
checkDataMD5("07002fb4bf8fea448ab63f650d852649", "example_data2.csv")
