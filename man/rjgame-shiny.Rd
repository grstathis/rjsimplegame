% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rjgame.R
\name{rjgame-shiny}
\alias{rjgame-shiny}
\alias{rjgameOutput}
\alias{renderRjgame}
\title{Shiny bindings for rjgame}
\usage{
rjgameOutput(outputId, width = "100\%", height = "400px")

renderRjgame(expr, env = parent.frame(), quoted = FALSE)
}
\arguments{
\item{outputId}{output variable to read from}

\item{width, height}{Must be a valid CSS unit (like \code{'100\%'},
\code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
string and have \code{'px'} appended.}

\item{expr}{An expression that generates a rjgame}

\item{env}{The environment in which to evaluate \code{expr}.}

\item{quoted}{Is \code{expr} a quoted expression (with \code{quote()})? This
is useful if you want to save an expression in a variable.}
}
\description{
Output and render functions for using rjgame within Shiny
applications and interactive Rmd documents.
}
