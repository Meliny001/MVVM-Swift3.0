//
//  ZGViewManager.swift
//  MVVM Swift
//
//  Created by Zhuge_Magic on 2017/2/16.
//  Copyright © 2017年 Magic. All rights reserved.
//

import UIKit

let cellID:String = "ZGTableViewCell"

class ZGViewManager: NSObject {
    //MARK:-属性
    var dataArr:[String]?
    
}

extension ZGViewManager:UITableViewDataSource,UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataArr = dataArr else {
            return 0;
        }
        return dataArr.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ZGTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! ZGTableViewCell
        cell.markLabel.text = dataArr?[indexPath.row]
        let index = indexPath.row % 3 + 1
        cell.iconImage.image = UIImage(named: "\(index).jpg")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dataArr?[indexPath.row] ?? "")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
