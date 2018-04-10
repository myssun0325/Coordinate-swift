//
//  MyLine.swift
//  CoordinateCalculator
//
//  Created by moon on 2018. 4. 10..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation


struct MyLine: Figure {

    private var pointA = MyPoint(x: 0, y: 0)
    private var pointB = MyPoint(x: 0, y: 0)
    
    var myPoints: [MyPoint] {
        return [self.pointA, self.pointB]
    }
    
    init(_ myPoints: [MyPoint]) {
        self.pointA = myPoints[0]
        self.pointB = myPoints[1]
    }
    
    func calculateDistance() -> Double {
        return sqrt(Double(pointA.x - pointB.x)^^ + Double(pointA.y - pointB.y)^^)
    }
    
    func printDistance() {
        print("두 점 사이의 거리는 \(self.calculateDistance())입니다.")
    }
}
