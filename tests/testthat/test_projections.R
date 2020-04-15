context("Projections\n")
library('fdim')
library('sf')
library('rnaturalearth')

deutschland = ne_countries(scale = "medium", country = "Germany", returnclass = "sf")

test_that(desc = "Importing sf with long/lat CRS",
            {
              expect_equal(st_is_longlat(fdim:::import_sf(dsn = system.file(package = "fdim"), layer = "madhya_pradesh")), FALSE)
              expect_equal(st_crs(fdim:::import_sf(dsn = system.file(package = "fdim"), layer = "madhya_pradesh"))$input, "EPSG:3857")
            }
          )

test_that(desc = "Reading sf object with long/lat CRS",
            {
              expect_output(bcd(deutschland, l = seq(25000, 100000, 25000)), "Note: Coordinates in Lat/Long; reprojecting to EPSG:3857...\n")
            }
          )

test_that(desc = "Matching projections of sf and grid",
            {
              expect_equal(st_crs(fdim:::import_sf(dsn = system.file(package = "fdim"), layer = "madhya_pradesh"))$input, st_crs(fdim:::overlay_grid(cs = 100000, f = fdim:::import_sf(dsn = system.file(package = "fdim"), layer = "madhya_pradesh")))$input)
            }
          )