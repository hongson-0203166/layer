//
//  Myview.swift
//  Demolayer
//
//  Created by Phạm Hồng Sơn on 25/10/2023.
//

import UIKit

class Myview: UIView {
    var color:UIColor = .clear
    
    convenience init(frame:CGRect,color: UIColor) {
       self.init(frame: frame)
        self.color = color
    }

    override func draw(_ rect: CGRect) {
        var x = bounds.width / 10
        self.layer.backgroundColor = color.cgColor
        
        let shapeLayer = CAShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x:0,y:0))
        path.addLine(to: CGPoint(x: bounds.width, y: 0 ))
        path.addLine(to: CGPoint(x: bounds.height - x, y: x))
        path.addLine(to: CGPoint(x: x, y:x))
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.opacity = 0.3
        shapeLayer.path = path.cgPath
        self.layer.addSublayer(shapeLayer)
        
        let shapeLayer1 = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x:0,y:0))
        path1.addLine(to: CGPoint(x: 0, y: bounds.height ))
        path1.addLine(to: CGPoint(x: x, y: bounds.height - x))
        path1.addLine(to: CGPoint(x: x, y:x))
        shapeLayer1.strokeColor = UIColor.white.cgColor
        shapeLayer1.fillColor = UIColor.white.cgColor
        shapeLayer1.opacity = 0.3
        shapeLayer1.path = path1.cgPath
        self.layer.addSublayer(shapeLayer1)
        
        
        let shapeLayer2 = CAShapeLayer()
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x:0,y:bounds.height))
        path2.addLine(to: CGPoint(x: bounds.height, y: bounds.height ))
        path2.addLine(to: CGPoint(x: bounds.height - x, y: bounds.height - x))
        path2.addLine(to: CGPoint(x: x, y:bounds.height - x))
        shapeLayer2.strokeColor = UIColor.white.cgColor
        shapeLayer2.fillColor = UIColor.white.cgColor
        shapeLayer2.opacity = 0.3
        shapeLayer2.path = path2.cgPath
        self.layer.addSublayer(shapeLayer2)
        
        
        let shapeLayer3 = CAShapeLayer()
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x:bounds.height,y:bounds.height))
        path3.addLine(to: CGPoint(x: bounds.height, y: 0 ))
        path3.addLine(to: CGPoint(x: bounds.height - x, y: x))
        path3.addLine(to: CGPoint(x: bounds.height - x, y:bounds.height - x))
        shapeLayer3.strokeColor = UIColor.white.cgColor
        shapeLayer3.fillColor = UIColor.white.cgColor
        shapeLayer3.opacity = 0.3
        shapeLayer3.path = path3.cgPath
        self.layer.addSublayer(shapeLayer3)
        
    }
}
