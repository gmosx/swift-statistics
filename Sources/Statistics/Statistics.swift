// public protocol Statistics {
// //    associatedtype Element: SignedNumber
// //    func sum() -> Element
// }
//
// public extension Statistics where Self: Sequence, Self.Iterator.Element: SignedNumber {
//     typealias Element = Self.Iterator.Element
//     func sum() -> Element {
//         var sum: Element = self.first!
//         for value in self {
//             sum = sum + value
//         }
//         return sum
//     }
// }

extension Sequence where Element: Numeric {
    public func sum() -> Element {
        return reduce(0, +)
    }
}

extension Sequence where Element: SignedNumeric & Comparable {
}
