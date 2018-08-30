//
//  ErrorMessage.swift
//  CoordinateCalculator
//
//  Created by KIMMINSIK on 2018. 8. 28..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct ErrorMessage {
    
    enum Message: String, Error {
        case emptyInputValue = " 입력값이 없습니다. "
        case notBracketValue = " 입력값은 () 안에 있어야 합니다. "
        case notSeparatedCommaValue = " 입력값은 (x,y)의 형태로 구분해야 합니다."
        case notIntValue = " 입력값은 Int형 정수여야 합니다."
        case overCoordinateValue = " 입력값 x,y는 24 이하여야 합니다."
    }
}