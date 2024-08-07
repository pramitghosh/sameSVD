% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/self_similarity_utilities.R
\name{overlay_grid}
\alias{overlay_grid}
\title{Create grids for polygons supplied as arguments}
\usage{
overlay_grid(cs, f)
}
\arguments{
\item{cs}{The cell size of the grid that is to be created. This will be set as the side-length in x- and y-directions}

\item{f}{The sf object based on which the grid will be created}
}
\value{
An object of class `sfc` with square polygons
}
\description{
Create grids for polygons supplied as arguments
}
