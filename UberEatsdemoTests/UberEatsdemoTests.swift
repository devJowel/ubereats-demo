//
//  UberEatsdemoTests.swift
//  UberEatsdemoTests
//
//  Created by Islam Zahirul on 9/9/19.
//  Copyright © 2019 Islam Zahirul. All rights reserved.
//

import XCTest
@testable import UberEatsdemo

class UberEatsdemoTests: XCTestCase {

    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func test_restaurentModel() {
        let restaurent = Restaurent.init(name: "", imageURL: "", keywords: "", timeToDelever: "", reviewStar: 0, numberOfReviers: 0, minStartingPrice: 0)
        XCTAssertNotNil(restaurent)
    }
    
    //    func test_resturent_model_nil() {
    //        var restaurent = Restaurent.createRestaurent()
    //        XCTAssertNotNil(restaurent)
    //    }
    
    func test_MyViewController_empty_array() {
        
        let restaurent = Restaurent.init(name: "", imageURL: "", keywords: "", timeToDelever: "", reviewStar: 0, numberOfReviers: 0, minStartingPrice: 0)
        
        let restaurent1 = Restaurent.init(name: "", imageURL: "", keywords: "", timeToDelever: "", reviewStar: 0, numberOfReviers: 0, minStartingPrice: 0)
        
        
        var vc = MyViewController.init(collectionView: UICollectionView.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init()), restaurents: nil)
        
        //XCTAssertNil(vc.restaurents)
        
        
        XCTAssertEqual(vc.collectionView.numberOfItems(inSection: 0), 2)
        
        
        
        //XCTAssertEqual(vc.restaurents.count, 0)
    }
    
    
    func test_ColelctionView_hidden_if_empty_restaurents() {
        var vc = MyViewController.init(collectionView: UICollectionView.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init()), restaurents: [])
        
        XCTAssertEqual(vc.collectionView.isHidden, true)
        
    }
    

    func test_ColelctionView_hidden_if_nill_restaurents() {
        var vc = MyViewController.init(collectionView: UICollectionView.init(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init()), restaurents: nil)
        
        XCTAssertEqual(vc.collectionView.isHidden, true)
        
    }
    
    
}
//
