import XCTest
@testable import Statistics

class CollectionExtensionTests: XCTestCase {
    func testMovingMap() {
        let a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        XCTAssertEqual(a.movingMap(window: 1) { $0.reduce(0, +) }, a)
        XCTAssertEqual(a.movingMap(window: 3) { $0.reduce(0, +) }, [3, 6, 9, 12, 15, 18, 21, 24])
        XCTAssertEqual(a.prefix(6).movingMap(window: 5) { $0 }, [[0, 1, 2, 3, 4], [1, 2, 3, 4, 5]])
    }

    func testMovingMapExpanded() {
        let a: [Double] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        let mapped = a.movingMapExpanded(window: 3, fill: Double.nan) { $0.reduce(0, +) }
        XCTAssertEqual(mapped.count, a.count)
        XCTAssert(mapped[0].isNaN)
        XCTAssert(mapped[1].isNaN)
        XCTAssertEqual(mapped.dropFirst(2), [3, 6, 9, 12, 15, 18, 21, 24])
    }

    static var allTests = [
        ("testMovingMap", testMovingMap),
    ]
}
