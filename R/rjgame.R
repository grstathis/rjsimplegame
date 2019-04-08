#' Create a simple javascript game as a htmlwidget
#'
#' Use the arrowkeys to move the red square and avoid the obstacles.
#' The move you avoid, the higher the score.
#'
#' @examples rjgame()
#' @import htmlwidgets
#'
#' @export
rjgame <- function(message = '', width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rjgame',
    x,
    width = width,
    height = height,
    package = 'rjsimplegame',
    elementId = elementId
  )
}

#' Shiny bindings for rjgame
#'
#' Output and render functions for using rjgame within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a rjgame
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name rjgame-shiny
#'
#' @export
rjgameOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'rjgame', width, height, package = 'rjsimplegame')
}

#' @rdname rjgame-shiny
#' @export
renderRjgame <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, rjgameOutput, env, quoted = TRUE)
}
