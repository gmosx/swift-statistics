// https://en.wikipedia.org/wiki/Central_tendency

extension Collection where Element: FloatingPoint {
    public var mean: Element {
        return arithmeticMean
    }

    public var arithmeticMean: Element {
        assert(count > 0) // TODO: consider precondition?

        let n: Element = Element.init(count)

        if (n == 0) {
            return 0 // TODO: hmm...
        } else {
            return sum / n
        }
   }
}
