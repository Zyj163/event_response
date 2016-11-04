//
//  ViewA.swift
//  视图响应
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

import UIKit

class ViewA: UIView {
    
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print("hitA")
        let view = super.hitTest(point, with: event)
        print("A:\(view)")
        return view
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        print("insideA")
        let re = super.point(inside: point, with: event)
        print("A:\(re)")
        return re
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan A")
    }
}
