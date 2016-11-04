//
//  ViewController.swift
//  视图响应
//
//  Created by ddn on 16/9/26.
//  Copyright © 2016年 张永俊. All rights reserved.
//

/*
 执行顺序：(这个顺序执行两次是为什么？一次确定，一次发送？)
 点击A：
 hitA -> insideA -> A: return true -> hitB -> insideB -> B: return false -> B: return nil -> A: return viewA
 
 点击B：
 hitA -> insideA -> A: return true -> hitB -> insideB -> B: return true -> hitC -> insideC -> C: return false -> C: return nil -> B: return viewB -> A: return viewB
 
 点击C：
 hitA -> insideA -> A: return true -> hitB -> insideB -> B: return true -> hitC -> insideC -> C: return true -> C: return viewC -> B: return viewC -> A: return viewC
 
 结论：
 先调用最上层view（window）的hit方法，hit方法会调用inside方法，如果inside返回true，则继续调用子视图（如果子视图有多个，会从subviews的最后一个依次进行，如果有子视图返回view，则停止向其他子视图进行）的hit方法，依次类推，直到inside返回false，然后返回最后一个返回true的view，依次向上返回给最外层视图（window），然后将触摸事件发送给这个view。
 综上：inside方法是在hit内部的方法，inside方法是用来决定是否去判断子视图，而hit中返回的view才是决定最终的响应视图
 
 1.假如，点击A视图，让B视图响应，即使没用点在B：
 方法一：在hitB中返回true即可
 方法二：在insideB中返回viewB
 
 2.假如，点击视图B，让视图A响应：
 在hitB中返回nil即可，同时这样也会屏蔽B的子视图的响应，所以让insideB直接返回false，避免继续遍历B的子视图，做无用的工作
 
 3.假如B视图只有C、D两个子视图，点击视图C，让D响应；点击视图D，让C响应：
 只要满足，点击C让C返回nil，D返回D；点击D让D返回nil，C返回C
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

