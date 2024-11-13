
# strategy: 
# 1. write code to figure out where duplicate files are
# 2. rename the unique files with more meaningful names

files <- list.files(path = "1_original_files", recursive = TRUE, full.names = TRUE)

install.packages("digest")
library(digest)

hashes <- rep(NA, length = length(files))

digest("fake/dir/image_001.png", algo = "sha1", file = FALSE)
digest("research data management rules", algo = "sha1", file = FALSE)
digest(123, algo = "sha1", file = FALSE)
digest(pi, algo = "sha1", file = FALSE)

for (i in 1:length(files)) {
  hashes[i] <- digest(files[i], algo = "sha1", file = TRUE)
}

duplicated(c("aaa", "bbb", "ccc", "aaa"))
unique(c("aaa", "bbb", "ccc", "aaa"))

unique_hashes <- unique(hashes)

# now that we have the unique hashes, we should isolate the unique files somehow

library(dplyr)

ex_dat <- data.frame(
  name = c("Alice", "Bob", "Zack"),
  age = c(21, 30, 50),
  sex = c("F", "M", "m")
)

dat <- data.frame(
  og_filename = files,
  hash = hashes
)


unique_dat <- filter(dat, !duplicated(hash))

1 == 2
1 == 1
1 != 2

duplicated(hashes[1:50])
!duplicated(hashes[1:50])

str(unique_dat)

for (i in 1:nrow(unique_dat)) {
  sam <- read.csv(unique_dat$og_filename[i])
  new_filename <- paste0("2_renamed_files/", sam$sample_date[1], "_subject_", sam$subject_id[1], ".csv")
  file.copy(unique_dat$og_filename[i], new_filename)
}

new_files <- list.files("2_renamed_files/")
length(new_files) == nrow(unique_dat)

dir.create(paste0("2_renamed_files/subject_", sam$subject_id[i]))

sprintf("%03d", sam$subject_id[i]) # always makes subject id same length!

