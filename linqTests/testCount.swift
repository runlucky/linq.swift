//
//  testCount.swift
//  linqTests
//
//  Created by H5266 on 2018/09/10.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import XCTest
@testable import linq

class testCount: XCTestCase {
    private let list = [3, 4, 2, 3, 5]

    func testCountup() {
        XCTAssertEqual(list.count, 5)
        XCTAssertEqual(list.count { $0 < 4 }, 3)
    }

    func testEquatable() {
        XCTAssertEqual(list.count(3), 2)
        XCTAssertEqual(["a", "b", "c"].count("b"), 1)
    }
}
