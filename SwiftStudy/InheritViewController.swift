//
//  InheritViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-23.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class InheritViewController: UIViewController {
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        
        var button:JEButton = JEButton(frame: ccr(100, 100, 100, 100))
        
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        button.index = 20
        self.view.addSubview(button)


        
    }
    
    func buttonClick(button:JEButton){
        
        println("index is \(button.index)")
        
    }
    


}

class JEButton: UIButton {
    var index:Int?
    
    
}