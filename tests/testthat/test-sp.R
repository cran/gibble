context("test-sp.R")

data("hsh", package = "gibble")
## a SpatialPolygons, SpatialLines, SpatialMultiPoints
SPS <- hsh[["poly"]]
SLS <- hsh[["line"]]
MPS <- hsh[["point"]]

## a Polygon
P <- SPS@polygons[[1]]@Polygons[[1]]
## a Polygons
PS <- SPS@polygons[[1]]

## a Line
L <- SLS@lines[[1]]@Lines[[1]]
## a Lines
LS <- SLS@lines[[1]]

test_that("sp ibble works", {
  dSPS <- ibble(SPS)
  expect_that(dim(dSPS), equals(c(9L, 5L)))
  dSLS <- ibble(SLS)
  expect_that(dim(dSLS), equals(c(9L, 3L)))

  dMPS <- ibble(MPS)
  expect_that(dim(dMPS), equals(c(3L, 3L)))

  dP <- ibble(P)
  expect_that(dim(dP), equals(c(1L, 4L)))

  dPS <- ibble(PS)
  expect_that(dim(dPS), equals(c(6L, 5L)))

  dL <- ibble(L)
  expect_that(dim(dL), equals(c(1L, 3L)))

  dLS <- ibble(LS)
  expect_that(dim(dLS), equals(c(6L, 3L)))

})


# test_that("sp gibble methods exist", {
#   gibble::gibble.SpatialPolygons(SPS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble::gibble.SpatialLines(SLS)  %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type"))
#
#   gibble::gibble.SpatialMultiPoints(MPS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type"))
#
#   gibble::gibble.Polygons(PS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject", "object"))
#
#   gibble::gibble.Lines(LS) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type"))
#
#   gibble::gibble.Polygon(P) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type", "subobject"))
#
#   gibble::gibble.Line(L) %>% expect_s3_class("tbl_df") %>%
#     expect_named(c("nrow", "ncol", "type"))
# })

test_that("sp dispatch works", {
  gibble(SPS) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type", "subobject", "object"))

  gibble(SLS)  %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type"))

  gibble(MPS) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type"))

  gibble(PS) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type", "subobject", "object"))

  gibble(LS) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type"))

  gibble(P) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type", "subobject"))

  gibble(L) %>% expect_s3_class("tbl_df") %>%
    expect_named(c("nrow", "ncol", "type"))
})