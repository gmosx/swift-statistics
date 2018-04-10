import Foundation

// TODO: variance (sample / population)
// TODO: standard deviation (sample / population)

extension Collection where Element: FloatingPoint {
    public func biasedSampleVariance() -> Element {
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

    public func unbiasedSampleVariance() -> Element {
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

    public func variance() -> Element {
        return unbiasedSampleVariance()
    }

    public func standardDeviation() -> Element {
        return variance().squareRoot()
    }
}
