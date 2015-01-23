//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 尹现伟 on 15-1-21.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate {
    
    var tableView:UITableView?;
    var dataArray:NSMutableArray?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.dataArray = NSMutableArray(array: [NSString]())
        
        tableView = UITableView(frame: CGRectMake(0, 0, ScreenWidth, ScreenHeight), style: UITableViewStyle.Grouped)
        
        self.view.addSubview(tableView!)
        
        tableView!.dataSource = self
        tableView!.delegate = self
        
//        self.dataArray?.insertObject("常用控件", atIndex: 0)
        
        self.dataArray = NSMutableArray(objects: ["UI控件","函数和闭包"],["集合","类别"],["类","运算"],["继承","代理"])
        var obj = self.dataArray![0] as NSArray;
        
        
        tableView?.reloadData()
        
    }
//MARK: - UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.dataArray!.count;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataArray![section].count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        var title = self.dataArray![indexPath.section][indexPath.row] as NSString
        cell.textLabel.text = title;
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator;
        return cell
    }
//MARK: - UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var title = self.dataArray![indexPath.section][indexPath.row] as NSString

        var viewController:UIViewController?
        
        if(title.isEqualToString("UI控件")){
            viewController = ViewsController()
        }
        else if(title.isEqualToString("函数和闭包")){
            viewController = FuncAndBlockViewController()
        }
        else if(title.isEqualToString("集合")){
            viewController = SetViewController()
        }
        
        else if(title.isEqualToString("类别")){
            viewController = ClassesViewController()
        }
        
        else if(title.isEqualToString("类")){
            viewController = CreateClassViewController()
        }
        
        else if(title.isEqualToString("运算")){
            viewController = OperationViewController()
        }
        
        else if(title.isEqualToString("继承")){
            viewController = SetViewController()
        }
        
        else if(title.isEqualToString("代理")){
            viewController = SetViewController()
        }

        
        
        if (viewController != nil){
            viewController?.navigationItem.title = title
            self.navigationController?.pushViewController(viewController!, animated: true)
        }

    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


