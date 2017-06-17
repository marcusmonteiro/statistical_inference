## @knitr sample_mean_versus_theoretical_mean

SampleMeanVersusTheoreticalMean <- function() {
  sample.mean <- mean(exponential.distributions.means$mean)

  theoretical.mean <- 1 / kRate

  sample.mean.vs.theoretical.mean.table <- list(
    mean.type = as.factor(c('sample', 'theoretical')),
    mean = c(sample.mean, theoretical.mean)) %>%
    as.tibble()

  ggplot(exponential.distributions.means, aes(mean)) +
    ggtitle('Sample Mean versus Theoretical Mean') +
    geom_histogram(binwidth = .1) +
    geom_vline(
      data = sample.mean.vs.theoretical.mean.table,
      aes(xintercept = mean, color = mean.type))
}

SampleMeanVersusTheoreticalMean()
