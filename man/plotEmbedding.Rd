% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import.R
\name{plotEmbedding}
\alias{plotEmbedding}
\title{Plot 2D embedding
From scde/pagoda2/MUDAN}
\usage{
plotEmbedding(
  emb,
  groups = NULL,
  colors = NULL,
  cex = 0.6,
  alpha = 0.4,
  gradientPalette = NULL,
  zlim = NULL,
  s = 1,
  v = 0.8,
  min.group.size = 1,
  show.legend = FALSE,
  mark.clusters = FALSE,
  mark.cluster.cex = 2,
  shuffle.colors = FALSE,
  legend.x = "topright",
  gradient.range.quantile = 0.95,
  verbose = TRUE,
  unclassified.cell.color = "gray70",
  group.level.colors = NULL,
  ...
)
}
\arguments{
\item{emb}{dataframe with x and y coordinates}

\item{groups}{factor annotations for rows on emb for visualizing cluster annotations}

\item{colors}{color or numeric values for rows on emb for visualizing gene expression}

\item{cex}{point size}

\item{alpha}{point opacity}

\item{gradientPalette}{palette for colors if numeric values provided}

\item{zlim}{range for colors}

\item{s}{saturation of rainbow for group colors}

\item{v}{value of rainbow for group colors}

\item{min.group.size}{minimum size of group in order for group to be colored}

\item{show.legend}{whether to show legend}

\item{mark.clusters}{whether to mark clusters with name of cluster}

\item{mark.cluster.cex}{cluster marker point size}

\item{shuffle.colors}{whether to shuffle group colors}

\item{legend.x}{legend position ie. 'topright', 'topleft', 'bottomleft', 'bottomright'}

\item{gradient.range.quantile}{quantile for mapping colors to gradient palette}

\item{verbose}{verbosity}

\item{unclassified.cell.color}{cells not included in groups will be labeled in this color}

\item{group.level.colors}{set group level colors. Default uses rainbow.}

\item{...}{Additional parameters to pass to BASE::plot}
}
\value{
embedding plot
}
\description{
Plot 2D embedding
From scde/pagoda2/MUDAN
}
\examples{
data(vel)
curr <- vel$current
proj <- vel$projected

vv <- buildVeloviz(curr = curr, proj = proj, normalize.depth = TRUE,
use.ods.genes = TRUE, alpha = 0.05, pca = TRUE, nPCs = 20, center = TRUE,
scale = TRUE, k = 5, similarity.threshold = 0.25, distance.weight = 1,
distance.threshold = 0.5, weighted = TRUE, verbose = FALSE)

plotEmbedding(vv$fdg_coords)

}
