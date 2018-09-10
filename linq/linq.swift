//
//  linq.swift
//  linq
//
//  Created by H5266 on 2018/09/10.
//  Copyright © 2018年 Kakeru. All rights reserved.
//

import Foundation

public class linq {
    public func hello() -> String { return "world" }
}


extension Sequence {
    public func count(_ match: (Element) -> Bool) -> Int {
        return reduce(0) { n, element in match(element) ? n + 1 : n }
    }
}

extension Sequence where  Element: Equatable {
    public func count(_ element: Element) -> Int {
        return count { $0 == element }
    }
}


