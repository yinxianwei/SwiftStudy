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
        
        
        //数组遍历
        // 1> 闭区间循环，从1循环到10
        var array5 = NSMutableArray();
        for i in 1...10 {
            
            array5.insertObject(NSString(format: "%d", i), atIndex: 0);
            
        }
        // 2> 开区间循环，从1循环到9
        for i in 1..<10 {
            
            array5.insertObject(NSString(format: "%d", i), atIndex: 0);
            
        }
        
        // 3> 如果不需要知道区间内每一项的值，可以使用下划线(_)替代变量名，忽略对区间数值的访问
        
       var num = 0
        
        for _ in 1...10 {
            
            num++
            
        }
        
        //遍历字典
        
        var ageDict:Dictionary<String, Int> = ["mary": 19, "rose": 20]
       
        var names = [String]()
        
        var ages = [Int]()
        
        for (key, value) in ageDict {
            
            names.append(key)
            
            ages.append(value)  
            
        }
        
        
        var keys = [String]()
        
        var values = [String]()
        
        var dict1 = ["name": "mike", "age": "18"];
        
        for (name, age) in dict1 {
            
            keys.append(name)  
            
            values.append(age)  
            
        }

        // 使用标签退出循环
        
        // 使用标签的其中1个作用是：可以明确指定要退出哪个循环，以下示例是退出名字为"mainloop"的循环
        
        var result = 1;
        
        mainloop : for i in 1...5 {
            
            for j in 1...5 {
                
                result += j
                
                
                
                if (i == 3 && j == 3) {  
                    
                    break mainloop  
                    
                }  
                
            }  
            
        }
        
        //数组倒序
        var array7 =  NSMutableArray(array: ["R", "Z", "A", "C", "S", "Q","热" ]);

        println(array7);

        var xx = array7.sortedArrayUsingSelector(Selector("compare:"));
        
        println(xx)
         println(array7.reverseObjectEnumerator().allObjects);
        
        
        
        
        
        
    }
    
    func compare(obj : AnyObject)->AnyObject{
        
        
        
        return obj;
    }
}
