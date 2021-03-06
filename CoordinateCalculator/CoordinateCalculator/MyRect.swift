//
//  MyRect.swift
//  CoordinateCalculator
//
//  Created by jang gukjin on 26/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyRect : Figure, Guide {
    private(set) var leftTop = MyPoint(x: 0, y: 0)
    private(set) var rightBottom = MyPoint(x: 0, y: 0)
    private(set) var anotherPoint = MyPoint(x: 0, y: 0)
    private(set) var anotherPoint2 = MyPoint(x: 0, y: 0)
    
    init(pointA: MyPoint, pointB: MyPoint, pointC: MyPoint, pointD: MyPoint){
        self.leftTop = pointA
        self.rightBottom = pointB
        self.anotherPoint = pointC
        self.anotherPoint2 = pointD
    }
    
    private func areaCalculator(leftTop: MyPoint, rightBottom: MyPoint, anotherPoint: MyPoint) -> Double {
        let rowLine = MyLine.lengthCalculator(MyLine.init(startPoint: leftTop, endPoint: anotherPoint))()
        let columnLine = MyLine.lengthCalculator(MyLine.init(startPoint: anotherPoint, endPoint: rightBottom))()
        
        let betweenArea = rowLine * columnLine
        return round(betweenArea * 100)/100
    }
    
    func distinctIndex() -> (locationIndex: Int, myPoints: [MyPoint]) {
        var rectanglePoints : [MyPoint] = []
        rectanglePoints.append(leftTop)
        rectanglePoints.append(rightBottom)
        rectanglePoints.append(anotherPoint)
        rectanglePoints.append(anotherPoint2)
        return (rectanglePoints.count, rectanglePoints)
    }
    
    func guidePrint() -> (ment: String, value: Double) {
        let guideMent = (ment: "네 점사이의 넓이는", value:areaCalculator(leftTop: leftTop, rightBottom: rightBottom, anotherPoint: anotherPoint))
        return (guideMent.ment, guideMent.value)
    }
    
}
