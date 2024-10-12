//
//  DateUnit.swift
//  MyBaseExtension
//
//  Created by ios on 2024/10/12.
//

import UIKit

class DateUnit: NSObject {

    /// 毫秒
    static var currentMillkSecond: Int {
        Int(Date().timeIntervalSince1970 * 1000)
    }
    
    // 秒
    static var currentTimeSecond: Int {
        Int(Date().timeIntervalSince1970)
    }
}
