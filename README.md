# sameSVD

![R-CMD-check](https://github.com/pramitghosh/fdim/workflows/R-CMD-check/badge.svg) 
![pkgdown](https://github.com/pramitghosh/fdim/workflows/pkgdown/badge.svg) 
[![codecov](https://codecov.io/gh/pramitghosh/fdim/branch/master/graph/badge.svg)](https://codecov.io/gh/pramitghosh/fdim) 

Author: Pramit Ghosh

## Description

**sameSVD** stands for **S**imilarity and **A**ffinity **Me**asures for **S**patial **V**ector **D**ata

> This package is still under development and many of the objectives of this package are yet to be implemented or conceptualized.

The objective of this package is to establish (if required) and implement measures of (self-)similarity and (self-)affinity for spatial vector data represented in accordance with the [Simple Features](https://en.wikipedia.org/wiki/Simple_Features) (officially *Simple Features Access*) specifications, as endorsed by [OGC](https://www.ogc.org/projects/groups/sfswg) and [ISO](https://www.iso.org/standard/40114.html).

### Present Status

|  | Similarity | Affinity |
|--------|-----------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Self | - `*POINT` [done]<br>- `*LINESTRING` [done]<br>- `*POLYGON` [done] | - `*POINT` [not implemented yet]<br>- `*LINESTRING` [not implemented yet]<br>- `*POLYGON` [not implemented yet]<br><br>*to be implemented using box-counting dimension* |
| Others | - `*POINT` [need suitable algorithm]<br>- `*LINESTRING` [turning angles]<br>- `*POLYGON` [turning angles] | - `*POINT` [?]<br>- `*LINESTRING` [?]<br>- `*POLYGON` [?]<br><br>*need suitable algorithms to implement* |


## Installation

### Dependencies

In order to install this package, the following packages are required as a pre-requisite.

- `sf`

In addition, the following packages are also suggested. These are mostly required to knit the vignettes and run certain tests.

- `rnaturalearth`
- `rnaturalearthdata`
- `rgeos`

These can be installed by running the following command in R:

```r
install.packages(c("sf", "rnaturalearth", "rnaturalearthdata", "rgeos"))
```
## Usage

The Box-Counting dimension can be calculated using `bcd()`. The following example illustrates the usage.

```r
library(rnaturalearth)
deutschland = ne_countries(scale = "medium", country = "Germany", returnclass = "sf")
bcd(deutschland, plot = TRUE)
```

A more detailed illustration along with the internal working can be found in the [vignettes](https://pramitghosh.github.io/fdim/articles/using_fdim.html).
