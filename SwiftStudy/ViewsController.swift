//
//  ViewsController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-21.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit

class ViewsController: UIViewController,UIAlertViewDelegate,UIActionSheetDelegate,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor();
        self.extendedLayoutIncludesOpaqueBars = false;
        self.edgesForExtendedLayout = UIRectEdge.None;
//MARK: - Scrollview
        var scrollview = UIScrollView(frame: ccr(0, 0, ScreenWidth, ScreenHeight-64))
        scrollview.contentSize = ccs(ScreenWidth, VIEW_H(scrollview)*2)
        scrollview.delegate = self
        scrollview.pagingEnabled = true
        scrollview.backgroundColor = UIColor(red: 241/255.0, green: 241/255.0, blue: 241/255.0, alpha: 1)
        self.view.addSubview(scrollview)

        
//MARK: - 创建个view
        var v:UIView = UIView(frame: CGRectMake(0, 0, ScreenWidth, VIEW_H(scrollview)))
        v.backgroundColor = UIColor.lightGrayColor()
        v.tag = 101
        scrollview.addSubview(v)
        
//MARK: - button
        var button:UIButton = UIButton(frame: CGRectMake(20, 10, 80, 40))
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClick", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.blackColor()
        scrollview.addSubview(button)
        
//MARK: - 创建个开关
        var aSwitch:UISwitch = UISwitch(frame: ccr(VIEW_TX(button), VIEW_BY(button)+10, VIEW_W(button), 30))
        aSwitch.addTarget(self, action: "switchChanged:", forControlEvents: UIControlEvents.ValueChanged)
        scrollview.addSubview(aSwitch)
        
//MARK: - 分段选择
        var aSeg:UISegmentedControl = UISegmentedControl(frame: ccr(VIEW_TX(aSwitch), VIEW_BY(aSwitch)+20, 100, 30))
        aSeg.insertSegmentWithTitle("第二", atIndex: 0, animated: true)
        aSeg.insertSegmentWithTitle("第一", atIndex: 0, animated: true)
        aSeg.selectedSegmentIndex = 0
        aSeg.addTarget(self, action: "segSelectClick:", forControlEvents: UIControlEvents.ValueChanged)
        scrollview.addSubview(aSeg)
        
//MARK: - 来个lab
        var label:UILabel = UILabel(frame: ccr(ScreenWidth - 100 - 20, VIEW_TY(button), 100, 30))
        label.font = UIFont.systemFontOfSize(14)
        label.text = "哈，哈哈哈，哈哈哈哈哈，shenmegui"
        label.numberOfLines = 0
        label.backgroundColor = UIColor.whiteColor()
        label.lineBreakMode = NSLineBreakMode.ByCharWrapping
        scrollview.addSubview(label)

//MARK: - 计算下lab大小
        var size:CGSize = label.text!.stringSize(label.font, lineModel: NSLineBreakMode.ByCharWrapping, size: ccs(VIEW_W(label), 0))
        label.bounds = ccr(0, 0, size.width, size.height)

//MARK: - 输入框textfield
        var textfield = UITextField(frame: ccr(VIEW_TX(label), VIEW_BY(label)+10, 100, 30));
        textfield.placeholder = "输入内容"
        textfield.borderStyle = UITextBorderStyle.RoundedRect
        textfield.backgroundColor = UIColor.whiteColor()
        scrollview.addSubview(textfield)
       
//MARK: - 输入框textview
        var textView = UITextView(frame: ccr(VIEW_TX(textfield), VIEW_BY(textfield)+10, VIEW_W(textfield), 60))
        textView.backgroundColor = UIColor.whiteColor()
        scrollview.addSubview(textView)
        
        var pageControl = UIPageControl(frame: ccr(0, 0, ScreenHeight-64, 30))
        pageControl.center = ccp(ScreenWidth - 15, (ScreenHeight-64)/2)
        pageControl.numberOfPages = 2;
        pageControl.currentPage = 0;
        pageControl.tag = 100
        pageControl.userInteractionEnabled = false
        self.view.addSubview(pageControl)

//MARK: - 旋转
        pageControl.transform = CGAffineTransformMakeRotation(CGFloat(M_PI)/180 * 90);

//MARK: - 滑块
        var  slider = UISlider(frame: ccr(20, VIEW_BY(textView)+30, ScreenWidth - 40, 30))
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 100
        slider.minimumTrackTintColor = UIColor.whiteColor()
        slider.maximumTrackTintColor = UIColor.blackColor()
        slider.addTarget(self, action: "sliderClick:", forControlEvents: UIControlEvents.ValueChanged)
        scrollview.addSubview(slider)
        
//MARK: - 进度条
        var progressview = UIProgressView(frame: ccr(VIEW_TX(slider), VIEW_BY(slider)+30, VIEW_W(slider), 30))
        progressview.tag = 102
        progressview.progress = 1
        progressview.progressTintColor = UIColor.whiteColor()
        progressview.trackTintColor = UIColor.blackColor()
        scrollview.addSubview(progressview)
        
//MARK: - 菊花
        var activity = UIActivityIndicatorView(frame: ccr(ScreenWidth / 2 - 50/2, VIEW_BY(progressview)+30, 50, 50))
        activity.tag = 103
        scrollview.addSubview(activity);
        
        var stepper = UIStepper(frame: ccr(ScreenWidth / 2 - 100/2, VIEW_BY(activity)+30, 100, 30))
        stepper.maximumValue = 10
        stepper.minimumValue = 0
        stepper.value = 5
        stepper.addTarget(self, action: "stepperClick:", forControlEvents: UIControlEvents.ValueChanged)
        scrollview.addSubview(stepper)

//MARK: - 图片
        var imageView = UIImageView(frame: ccr(0, scrollview.contentSize.height/2, ScreenWidth, VIEW_H(scrollview)))
        imageView.image = IMG("abc")
        scrollview.addSubview(imageView)
        
//MARK: - webview
        var webview = UIWebView(frame: ccr(0, scrollview.contentSize.height/2, ScreenWidth, VIEW_H(scrollview)))
        webview.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.baidu.com")!))
        scrollview.addSubview(webview)
    }
    
//MARK: - 事件
    func buttonClick(){
        
        println("哈哈哈哈")
        var alert:UIAlertView = UIAlertView(title: "提示", message: "点击了按钮", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "确定")
        alert.show()
    }
    
    func switchChanged(swi:UISwitch){
        
        println("---->>\(swi.on)")
        var activity = self.view.viewWithTag(103) as! UIActivityIndicatorView
      
        if(swi.on){
            activity.startAnimating()
        }else{
            activity.stopAnimating()
        }
    }
    
    func segSelectClick(seg:UISegmentedControl){
        if(seg.selectedSegmentIndex == 1){
            var action:UIActionSheet = UIActionSheet(title: "选择", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "删除", otherButtonTitles: "更多")
            action.showInView(self.view)
            
        }
    }
    
    func sliderClick(slider:UISlider){
        println("滑块值：\(slider.value)")
        
        var view = self.view.viewWithTag(101)
        var f = CGFloat(slider.value/100.0)
        view?.alpha = f

        var progressview = self.view.viewWithTag(102) as! UIProgressView
        progressview.setProgress(Float(f), animated: true)
    }
    
    func stepperClick(stepper:UIStepper){
        println("------\(stepper.value)-----")
    }
    
//MARK: - UIScrollViewDelegate
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {

        var index = scrollView.contentOffset.y/VIEW_H(scrollView)
     
        var pageControl = self.view.viewWithTag(100) as! UIPageControl
        
        pageControl.currentPage = Int(index)
    }
    
//MARK: - UIActionSheetDelegate
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        println("----\(buttonIndex)-----")
    }
}
