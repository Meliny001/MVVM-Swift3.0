//
//  ZGCoverView.swift
//  MVVM Swift
//
//  Created by Zhuge_Magic on 2017/2/16.
//  Copyright © 2017年 Magic. All rights reserved.
//

import UIKit

class ZGCoverView: UIView {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    func coverView() -> (ZGCoverView) {
        
        return Bundle.main.loadNibNamed("ZGCoverView", owner: nil, options: nil)?.first as! ZGCoverView
    }
    
}
