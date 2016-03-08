//
//  Obstacle01.swift
//  parkour
//
//  Created by Shu Iida on 2016/03/01.
//  Copyright © 2016年 Shu Iida. All rights reserved.
//

import Foundation
import UIKit

class Obstacle {
    var xpos:Float
    var ypos:Float
    var hight:Int
    var width:Int
    let imgView:UIImageView

    init(x:Float, y:Float, h:Int, w:Int, img:UIImage) {
        self.xpos = x
        self.ypos = y
        self.hight = h
        self.width = w
        self.imgView = UIImageView(image:img);
        self.imgView.frame = CGRectMake(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h));
    }
}