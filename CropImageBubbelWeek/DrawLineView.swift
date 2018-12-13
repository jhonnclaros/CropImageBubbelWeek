//
//  DrawLineView.swift
//  CropImageBubbelWeek
//
//  Created by Danitza on 12/11/18.
//  Copyright © 2018 Danitza. All rights reserved.
//

import UIKit

class DrawLineView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    /*var circleLayer: CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        
        // Use UIBezierPath as an easy way to create the CGPath for the layer.
        // The path should be the entire circle.
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: (frame.size.width - 10)/2, startAngle: 0.0, endAngle: CGFloat(Double.pi * 2.0), clockwise: true)
        
        // Setup the CAShapeLayer with the path, colors, and line width
        circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.strokeColor = UIColor.red.cgColor
        circleLayer.lineWidth = 5.0;
        
        // Don't draw the circle initially
        circleLayer.strokeEnd = 0.0
        
        // Add the circleLayer to the view's layer's sublayers
        layer.addSublayer(circleLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCircleView() {
        _ = CGFloat(Int(arc4random_uniform(7))*50)
        let circleWidth = CGFloat(200)
        _ = circleWidth
        
        // Create a new CircleView
        //var circleView = addCircleView(frame: CGRect(x:0, y:0, width:circleWidth, heigth:circleHeight))
        
        //view.addSubview(circleView)
        
        // Animate the drawing of the circle over the course of 1 second
        //addCircleView().animateCircle(1.0)
    }*/
    
    /*override func draw(_ rect: CGRect) {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40)) // Create new button & set its frame
        button.setImage(UIImage(named: "refresh"), for: []) // Assign an image
        UIButton.customView = button // Set as barButton's customView
        
        
        let context = UIGraphicsGetCurrentContext()
        context!.setStrokeColor(UIColor.red.cgColor)
        let rectangle = UIView (frame: CGRect(x: 0, y: 0, width: 40, heigth: 40))
        CGContextAddEllipseInRect(context!,rectangle)
        CGContextStrokePath(context!)
    }*/
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        // Get the Graphics Context
        if let context = UIGraphicsGetCurrentContext() {
            
            // Set the circle outerline-width
            context.setLineWidth(5.0);
            
            // Set the circle outerline-colour
            UIColor.red.set()
            
            // Create Circle
            let center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
            let radius = (frame.size.width - 10)/2
            context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
            
            // Draw
            context.strokePath()
        }
    }
    
}
