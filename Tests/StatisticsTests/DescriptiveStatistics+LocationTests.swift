import XCTest
@testable import Statistics

class DescriptiveStatisticsLocationTests: XCTestCase {
    func testArithmeticMean() {
        XCTAssertEqual([1].arithmeticMean(), 1)
        XCTAssertEqual([0].arithmeticMean(), 0)
        XCTAssertEqual([2, 2, 2, 2].arithmeticMean(), 2)
        XCTAssertEqual([1, 2, 3, 4].arithmeticMean(), 2.5)
        XCTAssertEqual([1.21, 3.4, 2.15, 4, 1.55].arithmeticMean(), 2.462)
    }

    static var allTests = [
        ("testArithmeticMean", testArithmeticMean),
    ]
}
