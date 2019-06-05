//
//  MyStyle.swift
//  GradientCircularProgress
//
//  Created by keygx on 2015/11/25.
//  Copyright (c) 2015年 keygx. All rights reserved.
//

import GradientCircularProgress

public struct MyStyle: StyleProperty {
    /*** style properties **********************************************************************************/
    
    // Progress Size
    public var progressSize: CGFloat = 200
    
    // Gradient Circular
    public var arcLineWidth: CGFloat = 5.0
    public var startArcColor: UIColor = UIColor.clear
    public var endArcColor: UIColor = UIColor.green
    
    // Base Circular
    public var baseLineWidth: CGFloat? = 5.0
    public var baseArcColor: UIColor? = UIColor.white
    
    // Ratio
    public var ratioLabelFont: UIFont? = UIFont(name: "Verdana-Bold", size: 12.0)
    public var ratioLabelFontColor: UIColor? = UIColor.black
    
    // Message
    public var messageLabelFont: UIFont? = UIFont.systemFont(ofSize: 12.0)
    public var messageLabelFontColor: UIColor? = UIColor.black
    
    // Background
    public var backgroundStyle: BackgroundStyles = .light
    
    
    // Dismiss
    public var dismissTimeInterval: Double? = 0.0 // 'nil' for default setting.
    
    /*** style properties **********************************************************************************/
    
    public init() {}
}
