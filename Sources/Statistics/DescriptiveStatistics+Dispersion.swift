import Foundation

// TODO: variance (sample / population)
// TODO: standard deviation (sample / population)

extension Collection where Element: FloatingPoint {
    public var unbiasedSampleVariance: Element {
        assert(count > 1)

        let xm = mean
        let n = Element.init(count)

        var sum: Element = 0

        for x in self {
            let deviation = x - xm
            sum += deviation * deviation
        }

        return sum / (n - 1)
    }

    public var variance: Element {
        return unbiasedSampleVariance
    }
}
