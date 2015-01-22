//
//  ViewsController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-21.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class ViewsController: UIViewController,UIAlertViewDelegate,UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        
        //创建个view
        var v:UIView = UIView(frame: CGRectMake(0, 0, ScreenWidth, ScreenHeight))
        v.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(v)
        
        //创建个button
        var button:UIButton = UIButton(frame: CGRectMake(20, 64+10, 80, 40))
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClick", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.blackColor()
        self.view.addSubview(button)
        
        //创建个开关
        var aSwitch:UISwitch = UISwitch(frame: ccr(VIEW_TX(button), VIEW_BY(button)+10, VIEW_W(button), 30))
        aSwitch.addTarget(self, action: "switchChanged:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(aSwitch)
        
        //分段选择
        var aSeg:UISegmentedControl = UISegmentedControl(frame: ccr(VIEW_TX(aSwitch), VIEW_BY(aSwitch)+20, 100, 30))
        aSeg.insertSegmentWithTitle("第二", atIndex: 0, animated: true)
        aSeg.insertSegmentWithTitle("第一", atIndex: 0, animated: true)
        aSeg.selectedSegmentIndex = 0
        aSeg.addTarget(self, action: "segSelectClick:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(aSeg)
        

        var label:UILabel = UILabel(frame: ccr(VIEW_BX(aSeg)+10, VIEW_TY(button), 100, 30))
        label.font = UIFont.systemFontOfSize(14)
        label.text = "哈，哈哈哈，哈哈哈哈哈，shenmegui"
        label.numberOfLines = 0
        label.backgroundColor = UIColor.whiteColor()
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        self.view.addSubview(label)
        

        var str:NSString = label.text!
        

        var size:CGSize = str.stringSize(label.font, lineModel: NSLineBreakMode.ByCharWrapping, size: ccs(VIEW_W(label), 0))

        label.bounds = ccr(0, 0, size.width, size.height)

        
        
    }
    
    
    func buttonClick(){
        
        println("哈哈哈哈")
        var alert:UIAlertView = UIAlertView(title: "提示", message: "点击了按钮", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确定")
        alert.show()
    }
    
    func switchChanged(swi:UISwitch){
        
        println("---->>\(swi.on)")
        
    }
    
    func segSelectClick(seg:UISegmentedControl){
        if(seg.selectedSegmentIndex == 1){
            var action:UIActionSheet = UIActionSheet(title: "选择", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "删除", otherButtonTitles: "更多")
            action.showInView(self.view)
            
        }
    }
    
//MARK: - UIActionSheetDelegate
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        println("----\(buttonIndex)-----")
    }
}
