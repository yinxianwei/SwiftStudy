//
//  ViewsController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-21.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class ViewsController: UIViewController,UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        
        //创建个view
        var v:UIView = UIView(frame: CGRectMake(0, 0, ScreenWidth, ScreenHeight))
        v.backgroundColor = UIColor.magentaColor()
        self.view.addSubview(v)
        
        //创建个button
        var button:UIButton = UIButton(frame: CGRectMake(20, 64+10, 80, 40))
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClick", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.blackColor()
        self.view.addSubview(button)
        
        
        
    }
    
    func buttonClick(){
        
        println("哈哈哈哈")
        var alert:UIAlertView = UIAlertView(title: "提示", message: "点击了按钮", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确定")
        alert.show()
    }
}
