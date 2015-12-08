struct EstimationFactory {

  static func create(strategy: EstimationStrategy) -> EstimationAware {
    let estimator: EstimationAware

    switch strategy {
    case .Quadradic:
      estimator = QuadradicEstimator()
    case .Barycentric:
      estimator = BarycentricEstimator()
    case .QuinnsFirst:
      estimator = QuinnsFirstEstimator()
    case .QuinnsSecond:
      estimator = QuinnsSecondEstimator()
    case .Jains:
      estimator = JainsEstimator()
    case .HPS:
      estimator = HPSEstimator()
    case .ZeroCrossing:
      estimator = ZeroCrossingEstimator()
    case .MPM:
      estimator = MPMEstimator()
    default:
      estimator = MaxValueEstimator()
    }

    return estimator
  }
}
