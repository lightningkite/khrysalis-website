//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func placeholder(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 14.0, 6.0
        path.move(to: CGPoint(x: 14.0 * scaleX, y: 6.0 * scaleY))
        //l -3.75, 5.0, 2.85, 3.8, -1.6, 1.2
        path.addLine(to: CGPoint(x: 10.25 * scaleX, y: 11.0 * scaleY))
        path.addLine(to: CGPoint(x: 13.1 * scaleX, y: 14.8 * scaleY))
        path.addLine(to: CGPoint(x: 11.5 * scaleX, y: 16.0 * scaleY))
        //C 9.81, 13.75, 7.0, 10.0, 7.0, 10.0
        path.addCurve(to: CGPoint(x: 7.0 * scaleX, y: 10.0 * scaleY), control1: CGPoint(x: 9.81 * scaleX, y: 13.75 * scaleY), control2: CGPoint(x: 7.0 * scaleX, y: 10.0 * scaleY))
        //l -6.0, 8.0
        path.addLine(to: CGPoint(x: 1.0 * scaleX, y: 18.0 * scaleY))
        //h 22.0
        path.addLine(to: CGPoint(x: 23.0 * scaleX, y: 18.0 * scaleY))
        //L 14.0, 6.0
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 6.0 * scaleY))
        //z 
        sublayer.path = path
        sublayer.fillColor = UIColor(argb: 0xFF000000).cgColor
        return sublayer
    }())
    layer.bounds.size = CGSize(width: 24.0, height: 24.0)
    layer.scaleOverResize = true
    return layer
}

}
