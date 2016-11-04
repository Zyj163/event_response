//
//  ViewD.swift
//  视图响应
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

import UIKit

class ViewD: UIView {

    var inside: Bool = false
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print("hitD")
        let view = super.hitTest(point, with: event)
        print("D:\(view)")
        if inside {
            return nil
        }
        return self
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        print("insideD")
        let re = super.point(inside: point, with: event)
        print("D:\(re)")
        inside = re
        return re
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan D")
    }

}
