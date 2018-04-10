import XCTest
@testable import Statistics

class DescriptiveStatisticsTests: XCTestCase {
    func testSum() {
        XCTAssertEqual([].sum(), 0)
        XCTAssertEqual([1].sum(), 1)
        XCTAssertEqual([0].sum(), 0)
        XCTAssertEqual([1, 2, 3, 4].sum(), 10)
    }

    static var allTests = [
        ("testSum", testSum),
    ]
}
