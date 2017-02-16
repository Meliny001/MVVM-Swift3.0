//
//  ViewController.swift
//  MVVM Swift
//
//  Created by Zhuge_Magic on 2017/2/16.
//  Copyright © 2017年 Magic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableView:UITableView = {
        let tableView:UITableView = UITableView(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 20), style: .plain)
        tableView.delegate = self.viewManager
        tableView.dataSource = self.viewManager
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "ZGTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        return tableView
    }()
    lazy var dataModel:ZGViewData = {
        let dataModel:ZGViewData = ZGViewData()
        return dataModel
    }()
    
    lazy var viewManager:ZGViewManager = {
        let manager:ZGViewManager = ZGViewManager()
        
        return manager
    }()
    
    let cover:ZGCoverView = ZGCoverView().coverView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        
        let time: TimeInterval = 3.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
            //code
            self.loadData(count: 20)
        }
        
    }


}

extension ViewController
{
    func createUI() -> () {
        view.addSubview(tableView)
        
        view.addSubview(cover)
        cover.frame = view.bounds
        cover.indicator.startAnimating()
        
    }
    func loadData(count:NSInteger) -> () {
       
        dataModel.requestData(count: count) { (dataArr) in
            guard let resultArr = dataArr else{
              return
            }
            viewManager.dataArr = resultArr
            cover.indicator.stopAnimating()
            cover.removeFromSuperview()
            tableView.reloadData()
        }
    }
}
