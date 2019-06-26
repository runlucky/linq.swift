//
//  testExcept.swift
//  linqTests
//
//  Created by H5266 on 2019/06/26.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation
import XCTest

@testable import linq

class testExcept: XCTestCase {
    private let list = [3, 4, 2, 3, 5]

    func testExcept() {
        XCTAssertEqual(list.except([4, 5, 6]) , [3, 2, 3])
        XCTAssertEqual(list.except([6, 7, 8]) , [3, 4, 2, 3, 5])
        XCTAssertEqual(list.except([2, 3, 4, 5]) , [])

    }

}
