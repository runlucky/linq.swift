//
//  testAll.swift
//  linqTests
//
//  Created by 福田走 on 2018/09/11.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import XCTest
@testable import linq

class testAll: XCTestCase {
    private let evenList = [2, 4, 8, 12, 100]
    private let oddList = [1, 3, 13, 21, 99]
    private let list = [2, 4, 8, 13, 100]

    public func testAll() {
        XCTAssertTrue(evenList.all { even($0) })
        XCTAssertFalse(oddList.all { even($0) })
        XCTAssertFalse(list.all { even($0) })
    }


    private func even(_ n: Int) -> Bool {
        return n % 2 == 0
    }

    public func testEven() {
        for v in evenList {
            XCTAssertTrue(even(v))
        }

        for v in oddList {
            XCTAssertFalse(even(v))
        }
    }


}
