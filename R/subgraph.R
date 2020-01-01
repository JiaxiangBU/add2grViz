



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



add_content_subgraph <- function(text = NULL, name = NULL) {
    if (is.null(text))
        text = 1
    if (is.null(name))
        name = 1
    glue::glue("label = '{text}'
  style = dashed
  rank = same

  {name}")
}

frame_subgraph <- function(tag = NULL, block) {
    if (is.null(tag)) {
        tag = 1
    }
    glue::glue("subgraph cluster<<tag>>{
  <<block>>

  }",
               .open = "<<",
               .close = ">>")
}