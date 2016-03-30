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
    var speed:Float = 2.3

    init(x:Float, y:Float, h:Int, w:Int, img:UIImage) {
        self.xpos = x
        self.ypos = y
        self.hight = h
        self.width = w
        self.imgView = UIImageView(image:img);
        self.imgView.frame = CGRectMake(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h));
    }
    
    func setXpos(x:Float) {
        self.xpos = x
        self.imgView.frame.origin.x = CGFloat(self.xpos)
    }
    
    func move() {
        self.xpos -= speed
        self.imgView.frame.origin.x = CGFloat(self.xpos)
    }
}