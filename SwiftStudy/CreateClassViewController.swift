//
//  CreateClassViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-23.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class People:NSObject {
    
    var name:NSString?
    
    var age:Int?
    
    func myInfo() {
    
        println("\n我的名字是：\(self.name)\n我的年龄是：\(self.age)")
    }
    
    class func people() -> People{
        return People()
    }
    
}

//MARK: - 单例类的三种模式

class Singleton {
    
    var name:NSString?
    
    class var sharedInstance : Singleton {
        struct Static {
            static let instance : Singleton = Singleton()
        }
        return Static.instance
    }
}

//let _SingletonSharedInstance = Singleton()
//
//class Singleton  {
//    class var sharedInstance : Singleton {
//        return _SingletonSharedInstance
//    }
//}

//class Singleton {
//    class var sharedInstance : Singleton {
//        struct Static {
//            static var onceToken : dispatch_once_t = 0
//            static var instance : Singleton? = nil
//        }
//        dispatch_once(&Static.onceToken) {
//            Static.instance = Singleton()
//        }
//        return Static.instance!
//    }
//}

class CreateClassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        var p:People = People.people()
        p.name = "张三"
        p.age  = 22
        p.myInfo()
        
        
        let singleton:Singleton = Singleton.sharedInstance;
        singleton.name = "text"
        println("\(singleton.name)")

        let singleton2:Singleton = Singleton.sharedInstance;
        println("\(singleton2.name)")

        
    }
}

