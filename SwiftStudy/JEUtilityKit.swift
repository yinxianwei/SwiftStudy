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

//MARK: - UIView
extension UIView{
    func height()-> CGFloat{
        return self.frame.size.height;
    }
    
    func width()-> CGFloat{
        return self.frame.size.width;
    }
    func xPos()-> CGFloat{
        return self.frame.origin.x;
    }
    func yPos()-> CGFloat{
        return self.frame.origin.y;
    }
}

//MARK: - NSString
extension NSString{

    func stringSize(font:UIFont, lineModel:NSLineBreakMode, size:CGSize)-> CGSize{
        if (self.length == 0) {
            return ccs(0, 0)
        }
        var size_h:CGFloat = size.height
        if(size.height<=0){
            size_h = 10000
        }
        
        var paragraphStyle:NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = lineModel
        
        var attribute:NSDictionary = [NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle]
        
        var strSize:CGSize = self.boundingRectWithSize(ccs(size.width, size_h), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attribute, context: nil).size
        
        return strSize
    }
}


//MARK: - 坐标计算
func VIEW_W(view:UIView)-> CGFloat{
    return view.frame.size.width;
}
func VIEW_H(view:UIView)-> CGFloat{
    return view.frame.size.height;
}

func VIEW_TX(view:UIView)-> CGFloat{
    return view.frame.origin.x;
}
func VIEW_TY(view:UIView)-> CGFloat{
    return view.frame.origin.y;
}

func VIEW_BX(view:UIView)-> CGFloat{
    return view.frame.size.width+view.frame.origin.x;
}
func VIEW_BY(view:UIView)-> CGFloat{
    return view.frame.size.height+view.frame.origin.y;
}

func FRAME_TX(frame:CGRect)-> CGFloat{
    return frame.origin.x;
}
func FRAME_TY(frame:CGRect)-> CGFloat{
    return frame.origin.y;
}

func FRAME_W(frame:CGRect)-> CGFloat{
    return frame.size.width;
}
func FRAME_H(frame:CGRect)-> CGFloat{
    return frame.size.height;
}

//MARK: - 方法简写
func ccr(__X__:CGFloat,__Y__:CGFloat,__W__:CGFloat,__H__:CGFloat)-> CGRect{
 return CGRectMake(__X__, __Y__, __W__, __H__)
}

func ccs(__W__:CGFloat,__H__:CGFloat)-> CGSize{
    return CGSizeMake(__W__, __H__)
}

func ccp(__X__:CGFloat,__Y__:CGFloat)-> CGPoint{
    return CGPointMake(__X__, __Y__)
}

func IMG(imageName:NSString)-> UIImage?{
    return UIImage(named: imageName)
}

func FONT(f:CGFloat)-> UIFont{
    return UIFont.systemFontOfSize(f)
}




