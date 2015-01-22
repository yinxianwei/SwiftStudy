//
//  FuncAndBlockViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-22.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class FuncAndBlockViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        self.extendedLayoutIncludesOpaqueBars = false;
        self.edgesForExtendedLayout = UIRectEdge.None;

        self.runFunc(1, closure: { () -> () in
            self.aFunc()
        })
        
        self.runFunc(2, closure: { () -> () in
            println(self.aFuncString())
        })
        
        self.runFunc(3, closure: { () -> () in
            var a = 10
            println("\(a) + 1 = \(self.aFunc(a))")
        })
        
        self.runFunc(4, closure: { () -> () in
            self.aBlock({ () -> () in
                println("这是一个闭包")
            })
        })
        
        self.runFunc(5, closure: { () -> () in
            self.aBlock({ () -> (NSString) in
                return "给我加个小尾巴"
            }, block2: { (str) -> () in
                
                println("\(str)")
            })
        })
    }
    
    
    
//MARK: - 声明一个方法
    func aFunc(){
        println("这是一个方法")
    }

//MARK: - 有返回值的方法
    func aFuncString()-> NSString{
        var str = "有返回值的方法"
        
        return str
    }
    
//MARK: - 传入返回值的方法
    func aFunc(count:Int)-> Int{
        var a = Int(count+1)
        
        return a
    }
    
//MARK: - 空的闭包
    func aBlock(block:()->()){
        block()
    }
    
//MARK: - 传入参数的闭包
    func runFunc(delayTime:Double, closure:()->()){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delayTime * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
    }
    
//MARK: - 有返回和传入参数的闭包
    func aBlock(block:()->(NSString), block2:(str: NSString)->()){
        block2(str: block()+"___加个小尾巴")
    }
}
