import XCTest
@testable import Statistics

class DescriptiveStatisticsDispersionTests: XCTestCase {
    func testVariance() {
        XCTAssertEqual([].variance(), 0)
        XCTAssertEqual([3].variance(), 0)
        XCTAssertEqual([2, 2, 2, 2].variance(), 0)
        XCTAssertEqual([1.21, 3.4, 2, 4.66, 1.5, 5.61, 7.22].variance(), 5.16122, accuracy: 0.00001)
    }

    func testStandardDeviation() {
        XCTAssertEqual([].standardDeviation(), 0)
        XCTAssertEqual([1].standardDeviation(), 0)
        XCTAssertEqual([5, 5, 5, 5].standardDeviation(), 0)
        XCTAssertEqual([1.21, 3.4, 2, 4.66, 1.5, 5.61, 7.22].standardDeviation(), 2.27183, accuracy: 0.00001)
    }

    static var allTests = [
        ("testVariance", testVariance),
        ("testStandardDeviation", testStandardDeviation),
    ]
}
