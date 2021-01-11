import XCTest
@testable import Launch_Library

final class Launch_LibraryTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Launch_Library().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
