//
//  CustomTabBar.swift
//  UberEatsdemo
//
//  Created by Islam Zahirul on 9/9/19.
//  Copyright © 2019 Islam Zahirul. All rights reserved.
//

import Foundation
import UIKit

class CustomTabBar: UIView {
    
    internal enum BorderPosition{
        case top
        case bottom
        case left
        case right
    }
    
    var borderPosition: BorderPosition!
    
    fileprivate var items: [UIView] = [UIView]()
    
    var vStack: UIStackView = {
        let vStack = UIStackView.init(frame: .zero)
        vStack.translatesAutoresizingMaskIntoConstraints = false
        vStack.axis = NSLayoutConstraint.Axis.horizontal
        vStack.distribution = UIStackView.Distribution.fillEqually
        vStack.alignment = UIStackView.Alignment.center
        vStack.backgroundColor = .black
        return vStack
    }()
    
    init(borderPosition: BorderPosition,rect: CGRect) {
        super.init(frame: rect)
        self.borderPosition = borderPosition
            addSubview(vStack)
            vStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
            vStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
            vStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
            vStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
    }
    
    override func layoutSubviews() {
        let topBorder = CALayer.init()
        if borderPosition == .top {
        topBorder.frame = CGRect.init(origin: .zero, size: CGSize.init(width: self.bounds.size.width, height: 0.3))
        } else if borderPosition == .bottom {
            topBorder.frame = CGRect.init(x: 0, y: self.bounds.size.height, width: self.bounds.size.width, height: 0.3)
        }
        topBorder.backgroundColor = UIColor.lightGray.cgColor
        layer.addSublayer(topBorder)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: Add Items
extension CustomTabBar {
    func addItems(items: [UIView]) {
        self.items = items
        for item in self.items {
            item.tintColor = .lightGray
            vStack.addArrangedSubview(item)
            
           // item.centerXAnchor.constraint(equalTo: vStack.centerXAnchor, constant: 0).isActive = true
            item.centerYAnchor.constraint(equalTo: vStack.centerYAnchor, constant: 0).isActive = true
        }
    }
}
