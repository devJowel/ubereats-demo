//
//  CustomTabBarController.swift
//  UberEatsdemo
//
//  Created by Islam Zahirul on 10/9/19.
//  Copyright © 2019 Islam Zahirul. All rights reserved.
//

import UIKit

class CustomTabBarController : UITabBarController {
    
    var customTabBar:CustomTabBar!
    
    override func viewDidLoad() {
        self.tabBar.isHidden = true
         customTabBar = CustomTabBar.init(borderPosition: .top, rect: .zero)
       
        customTabBar.translatesAutoresizingMaskIntoConstraints = false
        customTabBar.backgroundColor = .white
        self.view.addSubview(customTabBar)
        
        customTabBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
         customTabBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
         customTabBar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        customTabBar.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        
        
        addItems()
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //selectedViewController = viewControllers![1]
    }
    
    func addItems() {
        let imgView = UIImageView.init(frame: CGRect.init(origin: .zero, size: CGSize.init(width: 45, height: 45)))
        imgView.image = UIImage.init(named: "icon_1")
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let imgView1 = UIImageView.init(frame: CGRect.init(origin: .zero, size: CGSize.init(width: 45, height: 45)))
        imgView1.image = UIImage.init(named: "favor")
        imgView1.contentMode = .scaleAspectFit
        imgView1.translatesAutoresizingMaskIntoConstraints = false
        
        customTabBar.addItems(items: [imgView,imgView1])
    }
    
    override func viewDidLayoutSubviews() {
       let cFrame = self.view.subviews[0].frame
        self.view.subviews[0].frame = CGRect.init(x: cFrame.origin.x, y: cFrame.origin.y, width: cFrame.size.width, height: cFrame.size.height - 60)
    }
}
