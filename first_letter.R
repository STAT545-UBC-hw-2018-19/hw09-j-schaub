#Read in the words.txt file
words <- readLines("words.txt")

#Change all letters to lower case for ease (won't count upper and lower case letters individually)
lower_case_words <- stringr::str_to_lower(words)

#Determine the first letter of each word
first_letters <- stringr::str_sub(lower_case_words, start = 1, end = 1)

#Turn the data into a frequency table
letters <- table(first_letters)

#Write the table to a .tsv
write.table(letters, "letters.tsv", sep = "\t", row.names = FALSE, quote = FALSE)

