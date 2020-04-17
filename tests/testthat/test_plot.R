context("Plots\n")
library(rnaturalearth)
library(fdim)

deutschland = ne_countries(scale = "medium", country = "Germany", returnclass = "sf")

test_that(desc = "Check plotting in bcd()",
            {
              expect_output(bcd(deutschland, l = seq(25000, 100000, 25000), plot = TRUE), "Plotting requested...\n")
              expect_equal(grepl("Plotting best-fit line...", capture_output(bcd(deutschland, l = seq(25000, 100000, 25000), plot = TRUE))), TRUE)
            }
          )