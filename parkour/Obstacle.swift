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
    var height:Int
    var width:Int
    let imgView:UIImageView
    var speed:Float = 0

    init(x:Float, y:Float, h:Int, w:Int, img:UIImage) {
        self.xpos = x
        self.ypos = y
        self.height = h
        self.width = w
        self.imgView = UIImageView(image:img);
        self.imgView.frame = CGRectMake(CGFloat(x), CGFloat(y), CGFloat(w), CGFloat(h));
    }
    
    func setXpos(x:Float) {
        self.xpos = x
        self.imgView.frame.origin.x = CGFloat(self.xpos)
    }
    
    func move() {
        if(self.xpos > -100) {
            self.xpos -= speed
            self.imgView.frame.origin.x = CGFloat(self.xpos)
        }
    }
    
    func setHeight(h:Int) {
        self.height = h;
        self.imgView.frame =
            CGRectMake(CGFloat(self.xpos),
                       CGFloat(UIScreen.mainScreen().bounds.height) - CGFloat(h),
                       CGFloat(self.width),
                       CGFloat(h));
    }
}