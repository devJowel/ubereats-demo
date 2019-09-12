//
//  ViewController.swift
//  UberEatsdemo
//
//  Created by Islam Zahirul on 9/9/19.
//  Copyright © 2019 Islam Zahirul. All rights reserved.
//

import UIKit
import MapKit
class SecondViewController: UIViewController {
    
    
    var testBottomTextLabel: UILabel = {
        let label = UILabel.init()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is bottom text test 2nd "
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 18)
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(white: 0.78, alpha: 1.0)
        self.view.addSubview(testBottomTextLabel)
        
        //testBottomTextLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        testBottomTextLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        testBottomTextLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        testBottomTextLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
    }
}






public struct Restaurent{
    let name: String
    let imageURL: String
    let keywords: String
    let timeToDelever: String
    let reviewStar: Int
    let numberOfReviers: Int
    let minStartingPrice: Int
}



class MyCustomViewController: UIViewController {
    var myString: String = ""
    
    convenience init( myString: String ) {
        self.init()
        
        self.myString = myString
    }
}

class MyViewController: UIViewController {
    
    
    var collectionView: UICollectionView!
    var mapView: MKMapView!
    
    var restaurents:[Restaurent]!
    
    convenience init( collectionView: UICollectionView,restaurents: [Restaurent]?) {
        self.init()
        self.collectionView = collectionView
        self.restaurents = restaurents
        guard let _ = restaurents  else {
            self.collectionView.isHidden = true
            return
        }
        
        guard restaurents!.count > 0 else {
            self.collectionView.isHidden = true
            return
        }
        
        self.collectionView.dataSource = self
        
        
    }
    
    func setupDataSource() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension MyViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell.init()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurents.count ?? 0
    }
    
    
}


class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
      
        var customTabBar = CustomTabBar.init(borderPosition: .bottom, rect: .zero)
        
        customTabBar.translatesAutoresizingMaskIntoConstraints = false
        customTabBar.backgroundColor = .white
        self.view.addSubview(customTabBar)
        
        customTabBar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        customTabBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        customTabBar.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        customTabBar.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        
    }
}
