import Foundation

extension Collection where Element == Double {
    /// moment = Σ[x^k] / n
    public func moment(order: Int) -> Element {
        assert(count > 0) // TODO: consider precondition?

        if count < 1 {
            return 0
        }

        let n = Element.init(count)

        var sum: Element = 0

        for x in self {
            sum += pow(x, Double(order))
        }

        return sum / n
    }

    /// centralMoment = Σ[(x - xm)^k] / n
    public func centralMoment(mean: Element? = nil, order: Int) -> Element {
        assert(count > 0) // TODO: consider precondition?

        if count < 1 {
            return 0
        }

        let xm = mean ?? self.mean()
        let n = Element.init(count)

        var sum: Element = 0

        for x in self {
            let deviation = x - xm
            sum += pow(deviation, Double(order))
        }

        return sum / n
    }

    // TODO: skewness (3rd order centralMoment)

    // TODO: kurtosis (4th order centralMoment)
}
