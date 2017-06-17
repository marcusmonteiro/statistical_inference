## @knitr sample_variance_versus_theoretical_variance

SampleVarianceVersusTheoreticalVariance <- function() {
  sample.variance <- var(exponential.distributions.means$mean)

  sample.standard.deviation <- sd(exponential.distributions.means$mean)

  theoretical.variance <- 1 / (kRate ^ 2) / kNumberOfExponentialsPerSimulation

  theoretical.standard.deviation <- sqrt(theoretical.variance)

  sample.variance.vs.theoretical.variance.table <- list(
    mean.type = as.factor(c('sample', 'theoretical')),
    variance = c(sample.variance, theoretical.variance),
    standard.deviation = c(sample.standard.deviation,
                           theoretical.standard.deviation)) %>%
    as.tibble()

  t1 <- tableGrob(sample.variance.vs.theoretical.variance.table)
  t1.title <- textGrob('Sample Variance versus Theoretical Variance')
  padding <- unit(5,"mm")
  t <- gtable_add_rows(t1, heights = grobHeight(t1.title) + padding, pos = 0)
  t <- gtable_add_grob(t, t1.title,  1, 1, 1, ncol(t))

  grid.newpage()
  grid.draw(t)
}

SampleVarianceVersusTheoreticalVariance()
