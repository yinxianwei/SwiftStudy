//
//  JEUtilityKit.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-21.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import Foundation
import UIKit

//TODO: 备忘录

//FIXME: 这是一个bug

//MARK: - 类似宏定义

let ScreenHeight = UIScreen.mainScreen().bounds.size.height
let ScreenWidth = UIScreen.mainScreen().bounds.size.width

//MARK: - 类别（UIView）
extension UIView{
    func height()-> CGFloat{
        return self.frame.size.height;
    }
    
    func width()-> CGFloat{
        return self.frame.size.width;
    }
    func BY()-> CGFloat{
        return self.frame.size.height+self.frame.origin.y;
    }

    func BX()-> CGFloat{
        return self.frame.size.width+self.frame.origin.x;
    }
    
    func TY()-> CGFloat{
        return self.frame.origin.y;
    }
    
    func TX()-> CGFloat{
        return self.frame.origin.x;
    }

}


