//
//  ViewController.swift
//  TextKitDemo
//
//  Created by yumeng tang on 2018/7/11.
//  Copyright © 2018年 yumeng tang. All rights reserved.
//

import UIKit
import SnapKit



class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView?
    var dataArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArr = ["RoundTextKit","2","3","4","5","6","7","8","9","10"]
        tableView  = UITableView(frame: CGRect(
            x: 0, y: 20,
            width:  UIScreen.main.bounds.size.width,
            height: UIScreen.main.bounds.size.height),
                                      style: .plain)
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.separatorStyle = .singleLine
        tableView?.separatorInset = UIEdgeInsetsMake(0, 20, 0, 20)
        self.view.addSubview(tableView!)
    }
    
    
    //Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count;
    }
    
    //cell高度
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    
    //cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(dataArr[indexPath.row] as! String)
        cell.detailTextLabel?.text = "test\(dataArr[indexPath.row])"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let roundVc = RoundTextKitViewController()
            self.navigationController?.pushViewController(roundVc, animated: true)
    }



}

