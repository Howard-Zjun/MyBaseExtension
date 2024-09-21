//
//  UITableViewExtension.swift
//  BaseExtension
//
//  Created by Howard-Zjun on 2024/08/20.
//

import UIKit

extension UITableView {
    
    public func register<T : UITableViewCell>(_ cellType: T.Type) {
        if Bundle.main.path(forResource: String(describing: cellType), ofType: "nib")?.first != nil {
            register(.init(nibName: String(describing: cellType), bundle: nil), forCellReuseIdentifier: NSStringFromClass(cellType))
        } else {
            register(cellType, forCellReuseIdentifier: NSStringFromClass(cellType))
        }
    }
    
    public func dequeueReusableCell<T : UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
        if let cell = dequeueReusableCell(withIdentifier: NSStringFromClass(cellType), for: indexPath) as? T {
            return cell
        } else {
            fatalError("没有注册\(cellType)")
        }
    }
}

extension UICollectionView {
    
    public func register<T : UICollectionViewCell>(_ cellType: T.Type) {
        if Bundle.main.path(forResource: String(describing: cellType), ofType: "nib")?.first != nil {
            register(.init(nibName: String(describing: cellType), bundle: nil), forCellWithReuseIdentifier: NSStringFromClass(cellType))
        } else {
            register(cellType, forCellWithReuseIdentifier: NSStringFromClass(cellType))
        }
    }
    
    public func dequeueReusableCell<T : UICollectionViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
        if let cell = dequeueReusableCell(withReuseIdentifier: NSStringFromClass(cellType), for: indexPath) as? T {
            return cell
        } else {
            fatalError("没有注册\(cellType)")
        }
    }
}
