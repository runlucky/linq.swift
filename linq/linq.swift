//
//  linq.swift
//  linq
//
//  Created by H5266 on 2018/09/10.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import Foundation

public extension Sequence {
    public func count(_ predicate: (Element) -> Bool) -> Int {
        return reduce(0) { n, element in predicate(element) ? n + 1 : n }
    }

    public func all(_ predicate: (Element) -> Bool) -> Bool {
        return !contains { !predicate($0) }
    }
}

public extension Sequence where Element: Equatable {
    public func count(_ element: Element) -> Int {
        return count { $0 == element }
    }
}

public extension Collection {
    public func sorted<T: Comparable>(_ predicate: (Element) -> T) -> Array<Element> {
        return sorted { predicate($0) < predicate($1) }
    }

    public func sortedDescending<T: Comparable>(_ predicate: (Element) -> T) -> Array<Element> {
        return sorted { predicate($0) > predicate($1) }
    }
}

public extension Collection where Element: Comparable {
    public func sortedDescending() -> Array<Element> {
        return sorted { $0 > $1 }
    }
}
