//
//  Number+Extension.swift
//  MyBaseExtension
//
//  Created by ios on 2024/11/29.
//

import UIKit

public extension NSNumber {
    
    func stringFormat(locale: Locale) -> String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = locale
        numberFormatter.numberStyle = .spellOut
        return numberFormatter.string(from: self)
    }
    
    /// 中文文字格式化
    var zh_cnFormat: String? {
        stringFormat(locale: .init(identifier: "zh_CN"))
    }
    
    /// 英文文字格式化
    var en_usFormat: String? {
        stringFormat(locale: .init(identifier: "en_us"))
    }
    
    
}
