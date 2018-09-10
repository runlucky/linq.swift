//
//  testSort.swift
//  linqTests
//
//  Created by H5266 on 2018/09/10.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import XCTest
@testable import linq

class testSort: XCTestCase {
    private let list = [2, 3, 5, 3, 1]

    private struct User: Equatable {
        public let id: Int
        public let name: String
    }

    private let users = [
        User(id: 2, name: "fuga"),
        User(id: 4, name: "myon"),
        User(id: 3, name: "piyo"),
        User(id: 1, name: "hoge")
    ]
    private let ascending = [
        User(id: 1, name: "hoge"),
        User(id: 2, name: "fuga"),
        User(id: 3, name: "piyo"),
        User(id: 4, name: "myon")
    ]
    private let descending = [
        User(id: 4, name: "myon"),
        User(id: 3, name: "piyo"),
        User(id: 2, name: "fuga"),
        User(id: 1, name: "hoge")
    ]

    func testSorted() {
        XCTAssertEqual(list.sorted(), [1, 2, 3, 3, 5])
        XCTAssertEqual(users.sorted { $0.id < $1.id }, ascending)
        XCTAssertEqual(users.sorted { $0.id }, ascending)
    }

    func testOrderByDescending() {
        XCTAssertEqual(list.sortedDescending(), [5, 3, 3, 2, 1])
        XCTAssertEqual(users.sortedDescending { $0.id }, descending)
    }
}

