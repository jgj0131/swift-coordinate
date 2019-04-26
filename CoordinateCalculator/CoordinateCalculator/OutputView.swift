//
//  OutputView.swift
//  CoordinateCalculator
//
//  Created by jang gukjin on 17/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct OutputView{
    /// 좌표를 그리는 함수
    func drawAxis() {
        print("\(ANSICode.clear)\(ANSICode.home)")
        print("\(ANSICode.text.blueBright)\(ANSICode.axis.draw())")
    }
    /// MyPoint, MyLine, MyTriangle을 받아와서 출력하는 함수
    func printPoint(figure : Figure){
        for index in 0...figure.distinctIndex().locationIndex-1 {
            print("\(ANSICode.text.whiteBright)\(ANSICode.cursor.move(row: 25-figure.distinctIndex().myPoints[index].y, col: (figure.distinctIndex().myPoints[index].x*2)+2))*")
        }
        print("\(ANSICode.cursor.move(row: 27, col: 25))")
        print(figure.distinctIndex().guideMent)
    }
}
