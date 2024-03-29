//
//  MyPoint.swift
//  CoordinateCalculator
//
//  Created by moon on 2018. 4. 3..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyPoint: Equatable {
    private(set) var x = 0
    private(set) var y = 0
}

extension MyPoint: Figure {
    var myPoints: [MyPoint] {
        return [MyPoint(x: self.x, y: self.y)]
    }
}

// ^^는 제곱을 하는 사용자 정의 연산자
postfix operator ^^

postfix func ^^(value: Double) -> Double {
    return value * value
}
