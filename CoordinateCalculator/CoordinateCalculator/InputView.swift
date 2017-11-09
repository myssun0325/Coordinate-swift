//
//  InputView.swift
//  CoordinateCalculator
//
//  Created by Eunjin Kim on 2017. 11. 6..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import Foundation

struct InputView {
    private var inputCoordinate = ""
    mutating func readInput() -> String {
        print("좌표를 입력하세요.")
        if let inputCoordinate = readLine() {
            self.inputCoordinate = inputCoordinate
        }
        return inputCoordinate
    }
    
    func separateCoordinateNumber(inputValue: String) -> MyPoint {
        if inputValue.hasPrefix("(") && inputValue.hasSuffix(")") {
            let rangeOfNumber = inputValue.index(after: inputValue.startIndex)..<inputValue.index(before: inputValue.endIndex)
            if inputValue[rangeOfNumber].range(of: ",") != nil {
                return separateByComma(rangeOfNumber: String(inputValue[rangeOfNumber]))
            }else {
                print("형식에 맞지 않는 입력값입니다. ,로 구분하지 않은 값")
            }
        }else {
            print("형식에 맞지 않는 입력값입니다. ()로 감싸지 않은 값")
        }
        return MyPoint(x: 0, y: 0)
    }
    
    func separateByComma(rangeOfNumber: String) -> MyPoint {
        var myPoint = MyPoint(x: 0, y: 0)
        let values = rangeOfNumber.split(separator: ",").flatMap({Int($0)})
        if values.count != 2 {
            print("입력된 숫자 갯수가 2개가 아니거나 아니거나 숫자가 아닙니다.")
            return myPoint
        }
        myPoint.x = values[0]
        myPoint.y = values[1]
        return myPoint
    }
}
