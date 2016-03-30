//
//  MainLoop.swift
//  parkour
//
//  Created by Shu Iida on 2016/03/08.
//  Copyright © 2016年 Shu Iida. All rights reserved.
//

import Foundation
import UIKit

class MainLoop:NSObject {
    var buildings:[Obstacle] = []
    
    init(mainView:UIView) {
        // Instantiate ten buildings.
        for i in 0...9 {
            if let build:UIImage? = UIImage(named: "building01.png") {
                let b:Obstacle = Obstacle(x:(Float)(i * 80 + 700),y:Float(UIScreen.mainScreen().bounds.height)-100, h:100, w:50, img:build!)
                buildings.append(b)
                mainView.addSubview(b.imgView)
            }
        }
    }
    
    func update(timer : NSTimer) {
        for i in 0...9 {
            buildings[i].move()
        }
    }
}