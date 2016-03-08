//
//  Obstacle01.swift
//  parkour
//
//  Created by Shu Iida on 2016/03/01.
//  Copyright © 2016年 Shu Iida. All rights reserved.
//

import Foundation
import UIKit

class Building {
    var xpos:Float
    var ypos:Float
    var hight:Int
    var width:Int
    let img:UIImage

    init(x:Float = 0, y:Float = 0, h:Int = 100, w:Int = 50, i:UIImage) {
        self.xpos = x
        self.ypos = y
        self.hight = h
        self.width = w
        self.img = i
    }
}