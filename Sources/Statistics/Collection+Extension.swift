public extension Collection {
    // TODO: follow the style of Collection.map
    // TODO: optimize
    /// Apply fn to windows of the collection.
    public func movingMap<T>(window windowCount: Int, fn: (SubSequence) -> T) -> [T] {
        assert(windowCount > 0)

        let resultCount = count - windowCount + 1

        var result = [T]()
        result.reserveCapacity(resultCount)

        for i in 0..<resultCount {
            result.append(fn(dropFirst(i).prefix(windowCount)))
        }

        return result
    }
}
