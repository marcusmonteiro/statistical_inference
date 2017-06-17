## @knitr simulations

ExponentialDistributionsMeans <- function(number.of.simulations,
                                          number.of.exponentials.per.simulation,
                                          rate) {
  replicate(number.of.simulations,
            mean(rexp(number.of.exponentials.per.simulation, rate))) %>%
    as_tibble() %>%
    rename(mean = value)
}

kNumberOfSimulations <- 1000
kNumberOfExponentialsPerSimulation <- 40
kRate <- .2

exponential.distributions.means <- ExponentialDistributionsMeans(
  kNumberOfSimulations,
  kNumberOfExponentialsPerSimulation,
  kRate)
