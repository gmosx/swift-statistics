import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DescriptiveStatisticsTests.allTests),
        testCase(DescriptiveStatisticsLocationTests.allTests),
        testCase(DescriptiveStatisticsDispersionTests.allTests),
    ]
}
#endif
