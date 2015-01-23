//
//  OperationViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-23.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class OperationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()

        var maxI = max(1, 2)
        
        println("max num is \(maxI)")
        
        var isNum = maxI>1 ? 5 : 10
        
        println("num is \(isNum)")
        
//MARK: - 保留两位小数
        
        let i=3
        let str = String(format:"%.2d",i)
        println("\(str)")
        
        let num = NSString(format:"%.2f",100.3222).doubleValue
        println("num is \(num)")
        
        let nf = NSNumberFormatter()
        nf.numberStyle = NSNumberFormatterStyle.DecimalStyle
        nf.maximumFractionDigits = 2
        println("\(nf.stringFromNumber(3.3333))")

        

    }

}
