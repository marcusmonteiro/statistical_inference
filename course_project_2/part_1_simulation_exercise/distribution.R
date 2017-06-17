## @knitr distribution

SampleDistributionVersusNormalDistribution <- function() {
  sample.mean <- mean(exponential.distributions.means$mean)

  sample.standard.deviation <- sd(exponential.distributions.means$mean)

  ggplot(exponential.distributions.means, aes(x = mean)) +
    ggtitle('Sample Distribution Versus Normal Distribution') +
    geom_histogram(aes(y = ..density.., fill = ..count..), binwidth = .1) +
    geom_density(color = '#FF4136', size = 1) +
    stat_function(fun = dnorm, args = list(
      mean = sample.mean, sd = sample.standard.deviation),
      color = '#FF851B',
      size = 1)
}

SampleDistributionVersusNormalDistribution()
