import XCTest
@testable import Statistics

class StatisticsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Statistics().text, "Hello, World!")
    }


    static var allTests : [(String, (StatisticsTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
