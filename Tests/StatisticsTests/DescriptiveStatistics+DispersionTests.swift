import XCTest
@testable import Statistics

class DescriptiveStatisticsDispersionTests: XCTestCase {
    func testVariance() {
        XCTAssertEqual([2, 2, 2, 2].variance, 0)
        XCTAssertEqual([1.21, 3.4, 2, 4.66, 1.5, 5.61, 7.22].variance, 5.16122, accuracy: 0.00001)
    }

    static var allTests = [
        ("testVariance", testVariance),
    ]
}
