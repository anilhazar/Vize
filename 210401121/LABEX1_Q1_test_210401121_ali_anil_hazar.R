install.packages("testthat")
library(testthat)
test_that("Tüm değişkenleri sil", {
  rm(list = ls())
  expect_equal(length(ls()), 0)
})

test_that("Mevcut ise veri setini sil", {
  if ("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files()) {
    file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
  }
  expect_equal("MapsThatChangedOurWorld_StoryMap_Data.csv" %in% list.files(), FALSE)
})


current_dir <- getwd()
print(current_dir)
relative_path <- file.path(current_dir, "LABEX1_Q1_210401121_ali_anil_hazar.R")

source(relative_path)

#2.1
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya belirtilen dizinde mevcuttur.", {
  file_path <- file.path(current_dir,"MapsThatChangedOurWorld_StoryMap_Data.csv")
  expect_true(file.exists(file_path), info = "Dosya mevcut değil.")
})
