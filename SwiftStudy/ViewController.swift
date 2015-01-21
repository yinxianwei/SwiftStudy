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
        self.dataArray = NSMutableArray(array: [NSString]())
        
        tableView = UITableView(frame: CGRectMake(0, 20, ScreenWidth, ScreenHeight - 20), style: UITableViewStyle.Plain)
        
        self.view.addSubview(tableView!)
        
        tableView!.dataSource = self
        tableView!.delegate = self
        
        self.dataArray?.insertObject("常用控件", atIndex: 0)
        

        
        tableView?.reloadData()
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataArray!.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        var title = self.dataArray![indexPath.row] as NSString
        cell.textLabel.text = title;
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


