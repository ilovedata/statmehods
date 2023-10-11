# function to retrieve coefficient from glm object
# input: glm object
# output: vector of coefficients
get_coefficients <- function(glm_object, name) {
    return(glm_object$coefficients[name])
}


# function to select numeric columns in data frame
# input: data frame
# output: data frame with only numeric columns
get_numeric_columns <- function(data_frame) {
    return(data_frame[, sapply(data_frame, is.numeric)])
}

# function to calculate mean fo all continuous variables in data frame
# input: data frame
# output: vector of means
get_means <- function(data_frame) {
    return(colMeans(get_numeric_columns(data_frame), na.rm = TRUE))
}

# function to eliminate selected columns from data frame bu using column names
# input: data frame, vector of column names
# output: data frame with selected columns removed
remove_columns <- function(data_frame, columns) {
    return(data_frame[, !(names(data_frame) %in% columns)])
}
