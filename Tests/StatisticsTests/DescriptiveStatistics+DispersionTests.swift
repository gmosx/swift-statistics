import XCTest
@testable import Statistics

class DescriptiveStatisticsDispersionTests: XCTestCase {
    func testVariance() {
        XCTAssertEqual([].sampleVariance(), 0)
        XCTAssertEqual([3].sampleVariance(), 0)
        XCTAssertEqual([2, 2, 2, 2].sampleVariance(), 0)
        XCTAssertEqual([1.21, 3.4, 2, 4.66, 1.5, 5.61, 7.22].sampleVariance(), 5.16122, accuracy: 0.00001)
    }

    func testStandardDeviation() {
        XCTAssertEqual([].sampleStandardDeviation(), 0)
        XCTAssertEqual([1].sampleStandardDeviation(), 0)
        XCTAssertEqual([5, 5, 5, 5].sampleStandardDeviation(), 0)
        XCTAssertEqual([1.21, 3.4, 2, 4.66, 1.5, 5.61, 7.22].sampleStandardDeviation(), 2.27183, accuracy: 0.00001)
    }

    static var allTests = [
        ("testVariance", testVariance),
        ("testStandardDeviation", testStandardDeviation),
    ]
}
