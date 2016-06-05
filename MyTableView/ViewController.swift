//
//  ViewController.swift
//  MyTableView
//
//  Created by kaitouLee on 16/5/31.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    var canguan = ["川香麻辣烫","巫山烤鱼","Startbucks","小肥羊","日本料理","湘乐汇","蜀记","coasta Coffee","Dc冰激凌","哈根达斯","二人转烧烤"]
//    表格的区块里有多少个单元格
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return canguan.count
    }
    
//    表格相应位置的单元格,显示哪些内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = canguan[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        return cell
    }
//    隐藏状态栏
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

