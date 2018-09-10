//
//  linqTests.swift
//  linqTests
//
//  Created by H5266 on 2018/09/10.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import XCTest
@testable import linq

class linqTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let a = linq()

        XCTAssertTrue(a.hello() == "world")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
