import XCTest
@testable import Launch_Library

final class Launch_LibraryTests: XCTestCase {
    //    func testExample() {
    //        // This is an example of a functional test case.
    //        // Use XCTAssert and related functions to verify your tests produce the correct
    //        // results.
    //        XCTAssertEqual(Launch_Library().text, "Hello, World!")
    //    }
    
    let v: LaunchLibrary = LaunchLibrary()
    
    
    func testGetLaunches() {
        let expectation = XCTestExpectation(description: "Get all launches")
        
        v.getLaunches() { (launches: [Launch?]?, error: LaunchLibraryErrors?) in
            if let error = error {
                print("ERROR ERROR ERROR \n\n\n")
                print(error)
            }
            
            if let launches = launches {
                print("SUCCESS SUCCESS SUCCESS \n\n\n")
                print(launches)
                XCTAssertNotNil(launches, "Data received")
            }
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testGetLaunchById() {
        let expectation = XCTestExpectation(description: "Get launch by id")
        
        v.getLaunchById(1344) { (launch: CompleteLaunch?, error: LaunchLibraryErrors?) in
            if let error = error {
                print("ERROR ERROR ERROR \n\n\n")
                print(error.localizedDescription)
            }
            
            if let launch = launch {
                print("SUCCESS SUCCESS SUCCESS \n\n\n")
                print(launch)
                XCTAssertNotNil(launch, "Data received")
            }
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    static var allTests = [
        ("testGetLaunches", testGetLaunches),
    ]
}
