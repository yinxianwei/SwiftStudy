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
        
        
        self.F1 { () -> () in
            
            
            println("回调了block！！")
        }
        
        self.FA { (I1, I2) -> String in
            
            
            return "\(I1+I2) 哈哈哈哈哈"
        }
        
        /**
        *
        *  传入得到两个int ，声明一个函数指针准备返回，函数需要传入一个string，函数打印string
        */
        self.FB { (I1, I2) -> (String) -> () in
            
            func sumprint(result:String)
            {
                println("---->> \(result)")
            }
            
            return sumprint
            
        }
        self.FC { (I1, I2) -> (String) -> String in
            func sumprint(result:String) -> String{
                
                return result + "xxxxxx"
            }
            return sumprint
        }
        

    }
    
    
    func F1(block:funcBlock){
        block();
        
    }
    func FA(block:funcBlockA!){
        if let exsistblock = block
        {
            let retstr = block(5,5)
            
            println(retstr)
        }
    }
    
    func FB(block:funcBlockB!){
        if let exsistblock = block
        {
            let retfunc = block(5,6)
            retfunc("结果是")
        }
    }
    
    func FC(block:funcBlockC!){
        if let exsistblock = block
        {
            let retfunc = block(5,6)
            let str = retfunc("最终果结是")
            println(str)
        }
    }
    //无参无返回值
    typealias funcBlock = () -> () //或者 () -> Void
    //返回值是String
    typealias funcBlockA = (Int,Int) -> String
    //返回值是一个函数指针，入参为String
    typealias funcBlockB = (Int,Int) -> (String)->()
    //返回值是一个函数指针，入参为String 返回值也是String
    typealias funcBlockC = (Int,Int) -> (String)->String
    
    

    
    
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
    func aBlock(block:()->(NSString), block2:(NSString)->()){
        block2((block() as String)+"___加个小尾巴")
    }
    
    
    class func  GET(url:String, parameters:NSDictionary,complete:(String) ->(String)){
        
        complete("xxxx");
    }
    
}
