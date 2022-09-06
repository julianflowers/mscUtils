## get semantic scholar topics
get_ss_topics <- function(search){
  if(!require(semanticscholar))install_github('https://github.com/KTH-Library/semanticscholar')

tic()
search <- search
papers <- semanticscholar::S2_search_papers(search, limit = 100)
pap <- papers$data |> mutate(name = row_number())
paperId <- papers$data$paperId
papers1 <- map(paperId, S2_paper)
topics <- map(papers1, "topics")
topics <- topics %>%
  enframe() %>%
  unnest("value") %>%
  group_by(name) %>%
  summarise(topics = paste(topic, collapse = ", "))

topics <- pap %>%
  full_join(topics, by = "name")

toc()

return(topics)

}



