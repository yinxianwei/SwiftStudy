//
//  DelegateViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-23.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController,ToolProrocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        var tool:aTool = aTool()
        
        tool.delegate = self


        tool.delegateText("hahahahahha")
    }
    
//MARK: - ToolProrocol
    func didRecieveResults(result: NSString) {
        
        println("\(result)")
    }
    
    func text2() {
        
    
    }
}


@objc protocol ToolProrocol:NSObjectProtocol{
    //代理方法
   optional func didRecieveResults(result:NSString)
    
    func text2()
}

class aTool: NSObject {
    
    var delegate : ToolProrocol?

    func delegateText(str:NSString){
        if(self.delegate != nil){
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), { () -> Void in
                println("ssss")
                self.delegate?.didRecieveResults?(str)
            })
        }
    }
}








