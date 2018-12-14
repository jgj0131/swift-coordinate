//
//  FigureCreate.swift
//  coordinateCalculator
//
//  Created by JINA on 14/12/2018.
//  Copyright © 2018 JINA KIM. All rights reserved.
//

import Foundation

struct FigureCreate {
    //입력받은 문자열에서 숫자만 가져오기 "(10,10)-(20,20)" -> 옵셔널 [10, 10, 20, 20]
    static func number(of input: String) -> [Int?] {
        let point = input.components(separatedBy: CharacterSet(charactersIn: "-,")).map{$0.trimmingCharacters(in: CharacterSet(charactersIn: "()"))}
        let pointNum = point.map{Int($0)}
        return pointNum
    }
    
    //figure에 값넣기
    static func createFigure(_ userInput: [Int?]) -> Figure {
        let num = userInput.map({ (v: Int?) -> (Int) in
            return v ?? 0
        })
        
        switch num.count {
        case 4:
            return MyLine(point: num)
        default:
            return MyPoint(x: num[0], y: num[1])
        }
    }
}
