// https://en.wikipedia.org/wiki/Descriptive_statistics
// http://reference.wolfram.com/language/guide/DescriptiveStatistics.html

extension Sequence where Element: Numeric {
    public func sum() -> Element {
        return reduce(0, +)
    }
}

extension Sequence {
    public func sum<T>() -> T where T: Numeric, Element == T? {
        var sum: T = 0

        for value in self {
            if let value = value {
                sum += value
            }
        }

        return sum
    }
}
