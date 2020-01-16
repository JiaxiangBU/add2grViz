#' Add the heading of the text
#'
#' @importFrom glue glue
#' @param text text
#' @param links links
#' @param link_plus link_plus
#' @export
add_heading <- function(text = "",
                        links = "",
                        link_plus = "") {
    glue::glue(
        "digraph course {
  rankdir = LR
  node [shape = box, style=filled]
  layout = dot
  compound =true
  #color = crimson

  <<text>>

  <<links>>

  <<link_plus>>

  }",
        .open = "<<",
        .close = ">>"
    )
}

#' Add the content inside the subgraph
#'
#' @importFrom glue glue
#' @param text text
#' @param name name
#' @export
add_content_subgraph <- function(text = "", name = "") {
    glue::glue("label = '{text}'
  style = dashed
  rank = same

  {name}")
}
#' Frame the subgraph
#'
#' @importFrom glue glue
#' @param tag tag
#' @param block block
#' @export
frame_subgraph <- function(tag = "", block) {
    glue::glue("subgraph cluster<<tag>>{
  <<block>>

  }",
               .open = "<<",
               .close = ">>")
}
