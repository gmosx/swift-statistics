import Foundation

// TODO: sample* versions are used for inference, should move them?

extension Collection where Element: FloatingPoint {
    /// Computes the population variance
    public func populationVariance() -> Element {
        if count < 1 {
            return 0
        }

        let xm = mean()
        let n = Element.init(count)

        var sum: Element = 0

        for x in self {
            let deviation = x - xm
            sum += deviation * deviation
        }

        return sum / n
    }

    /// Computes the unbiased sample variance
    public func sampleVariance() -> Element {
        if count < 2 {
            return 0
        }

        let xm = mean()
        let n = Element.init(count)

        var sum: Element = 0

        for x in self {
            let deviation = x - xm
            sum += deviation * deviation
        }

        return sum / (n - 1)
    }

    public func populationStandardDeviation() -> Element {
        return populationVariance().squareRoot()
    }

    public func sampleStandardDeviation() -> Element {
        return sampleVariance().squareRoot()
    }
}
