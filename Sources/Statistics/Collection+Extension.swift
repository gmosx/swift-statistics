public extension Collection {
    /// Returns an array containing the results of mapping the given closure
    /// over windows of the collection.
    public func movingMap<T>(window windowCount: Int, _ transform: (SubSequence) throws -> T) rethrows -> [T] {
        // TODO: optimize

        assert(windowCount > 0)

        let resultCount = count - windowCount + 1

        var result = [T]()
        result.reserveCapacity(resultCount)
        
        for i in 0..<resultCount {
            result.append(try transform(dropFirst(i).prefix(windowCount)))
        }

        return result
    }

    // TODO: find a better name, ideas?
    public func movingMapExpanded<T>(window windowCount: Int, fill: T, _ transform: (SubSequence) throws -> T) rethrows -> [T] {
        // TODO: optimize

        assert(windowCount > 0)

        var result = [T]()
        result.reserveCapacity(count)

        let filledCount = windowCount - 1

        for _ in 0..<filledCount {
            result.append(fill)
        }

        let mappedCount = count - filledCount

        for i in 0..<mappedCount {
            result.append(try transform(dropFirst(i).prefix(windowCount)))
        }

        return result
    }

    // TODO: find a better name, ideas?
    public func movingMapExpanded<T>(window windowCount: Int, fill: T, _ transform: (SubSequence) -> T) -> [T] {
        // TODO: optimize

        assert(windowCount > 0)

        var result = [T]()
        result.reserveCapacity(count)

        let filledCount = windowCount - 1

        for _ in 0..<filledCount {
            result.append(fill)
        }

        let mappedCount = count - filledCount

        for i in 0..<mappedCount {
            result.append(transform(dropFirst(i).prefix(windowCount)))
        }

        return result
    }
}
