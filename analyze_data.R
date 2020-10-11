load("rda/murders.rda")

head(murders)

murders %>% 
  mutate(abb = reorder(abb,rate)) %>%
  ggplot(aes(x = abb, y = rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "black") + 
  coord_flip()

ggsave("figures/barplot.png")

