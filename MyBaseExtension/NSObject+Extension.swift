//
//  NSObject+Extension.swift
//  BaseExtension
//
//  Created by Howard-Zjun on 2024/08/21.
//

import UIKit

extension NSObject {
    
    // 创建一个颜色图片
    public func createImage(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRectMake(0, 0, size.width, size.height)
        let renderer = UIGraphicsImageRenderer(size: size)
        let ret = renderer.image { context in
            color.setFill()
            context.fill(.init(origin: .zero, size: size))
        }
        return ret
    }
}

extension CALayer {
    
    public func createImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: bounds.size)
        let ret = renderer.image { [weak self] context in
            self?.render(in: context.cgContext)
        }
        return ret
    }
}
