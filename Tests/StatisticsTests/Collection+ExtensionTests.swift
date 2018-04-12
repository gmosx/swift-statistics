//
//  Collection+ExtensionsTests.swift
//  StatisticsTests
//
//  Created by Georgios Moschovitis on 12/04/2018.
//

import XCTest

class CollectionExtensionTests: XCTestCase {
    func testMovingMap() {
        let a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        XCTAssertEqual(a.movingMap(window: 1) { $0.reduce(0, +) }, a)
        XCTAssertEqual(a.movingMap(window: 3) { $0.reduce(0, +) }, [3, 6, 9, 12, 15, 18, 21, 24])
        XCTAssertEqual(a.prefix(6).movingMap(window: 5) { $0 }, [[0, 1, 2, 3, 4], [1, 2, 3, 4, 5]])
    }

    static var allTests = [
        ("testMovingMap", testMovingMap),
    ]
}
