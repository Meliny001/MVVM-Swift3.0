//
//  ZGTableViewCell.swift
//  MVVM Swift
//
//  Created by Zhuge_Magic on 2017/2/16.
//  Copyright © 2017年 Magic. All rights reserved.
//

import UIKit

class ZGTableViewCell: UITableViewCell {
//MARK:-控件属性
    
    @IBOutlet weak var markLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
