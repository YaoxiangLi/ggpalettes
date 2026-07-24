library(ggpalettes)

dir.create("man/figures", recursive = TRUE, showWarnings = FALSE)

plot <- gg_palette_plot(n = 14) +
  ggplot2::labs(title = "ggpalettes", subtitle = "26 original colour palettes") +
  ggplot2::theme(
    plot.title = ggplot2::element_text(face = "bold", size = 18),
    plot.subtitle = ggplot2::element_text(colour = "#586174"),
    plot.background = ggplot2::element_rect(fill = "white", colour = NA)
  )

ggplot2::ggsave(
  "man/figures/palette-overview.png",
  plot,
  width = 10,
  height = 10,
  dpi = 160,
  bg = "white"
)
