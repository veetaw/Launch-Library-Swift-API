import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Launch_LibraryTests.allTests),
    ]
}
#endif
