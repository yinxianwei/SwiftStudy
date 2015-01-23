//
//  SetViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-23.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        var array:NSArray?
        array = ["1","2"]
        println("\(array)")
        
        array = NSArray(objects: "3","4")
        println("\(array)")
        
        array = NSArray()
        println("\(array)")
        
        var muArray:NSMutableArray?
        
        muArray = NSMutableArray()
        
        muArray = NSMutableArray(objects: "5","6")
        
        muArray?.insertObject("1", atIndex: 0)
        
        println("\(muArray)")
        
        muArray?.indexOfObject("5")
        
        muArray?.removeObject("1")
        
        println("\(muArray)")
        
        muArray?.removeAllObjects()
        
        
        
        
        var dict:NSMutableDictionary?
        
        dict = ["key":"value"]
        
        dict?.setObject("newValue", forKey: "key")
        
        println("\(dict)")
        
        dict = NSMutableDictionary(objects:["1","2"] , forKeys: ["key1","key2"])
        
        var range:NSRange = NSMakeRange(10, 10)
        
        var indexPath:NSIndexPath = NSIndexPath(forRow: 10, inSection: 3)
        
        var set:NSMutableSet = NSMutableSet()
        
        set.addObject("3")
        
        set.addObject("1")
        
    }
}
