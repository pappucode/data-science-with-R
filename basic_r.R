install.packages("RWeka")
install.packages("Rtools")
subject_name <- c("John Doe", "Jane Doe", "Steve Graves", "Pappu")
temperature <- c(98.1, 98.6, 101.4, 1)
flu_status <- c(FALSE, FALSE, TRUE, TRUE)

subject_name
temperature[2]
temperature[1:3]
tmp = temperature[-3]
tmp
temperature[c(TRUE, FALSE, TRUE)]
gender <- factor(c("Male", "Male", "Female", "Male"), levels = c("Male", "Female", "Shemale"))
gender

subject1 <- list(s = subject_name[1], t = temperature[1], f = flu_status[1], g = gender[1])
subject1[c("s", "t", "f")]
subject1
pt_data <- data.frame(subject_name, temperature, flu_status, gender, stringsAsFactors = FALSE)
pt_data[1]
pt_data
pt_data$subject_name
pt_data[c("temperature", "flu_status", "gender")]
pt_data
pt_data[3,4]

a = c(pt_data$subject_name, pt_data$gender, pt_data$temperature)
a
pt_data[c(1, 3), c("temperature", "gender")]
pt_data[-2, c(-1, -3, -5)]
pt_data[c(1, 3)]
