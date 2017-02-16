//
//  ZGViewData.swift
//  MVVM Swift
//
//  Created by Zhuge_Magic on 2017/2/16.
//  Copyright © 2017年 Magic. All rights reserved.
//

import UIKit
import Dispatch

class ZGViewData: NSObject {
//    static let sharedInstance:ZGViewData = {
//        let viewData = ZGViewData()
//        return viewData
//    }()
}

extension ZGViewData
{
    func requestData(count:NSInteger,finished: (_ result:[String]?)->()) -> () {
        var dataArr:[String] = []
        //code
        for i in 0..<count {
            dataArr.append("当前数据\(i)")
            
        }

        finished(dataArr)
    }
}
