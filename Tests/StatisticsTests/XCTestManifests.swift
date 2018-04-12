import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CollectionExtensionTests.allTests),
        testCase(DescriptiveStatisticsTests.allTests),
        testCase(DescriptiveStatisticsLocationTests.allTests),
        testCase(DescriptiveStatisticsDispersionTests.allTests),
    ]
}
#endif
