//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icSearch(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 15.5, 14.0
        path.move(to: CGPoint(x: 15.5 * scaleX, y: 14.0 * scaleY))
        //h -0.79
        path.addLine(to: CGPoint(x: 14.71 * scaleX, y: 14.0 * scaleY))
        //l -0.28, -0.27
        path.addLine(to: CGPoint(x: 14.430000000000001 * scaleX, y: 13.73 * scaleY))
        //C 15.41, 12.59, 16.0, 11.11, 16.0, 9.5, 16.0, 5.91, 13.09, 3.0, 9.5, 3.0
        path.addCurve(to: CGPoint(x: 16.0 * scaleX, y: 9.5 * scaleY), control1: CGPoint(x: 15.41 * scaleX, y: 12.59 * scaleY), control2: CGPoint(x: 16.0 * scaleX, y: 11.11 * scaleY))
        path.addCurve(to: CGPoint(x: 9.5 * scaleX, y: 3.0 * scaleY), control1: CGPoint(x: 16.0 * scaleX, y: 5.91 * scaleY), control2: CGPoint(x: 13.09 * scaleX, y: 3.0 * scaleY))
        //S 3.0, 5.91, 3.0, 9.5, 5.91, 16.0, 9.5, 16.0
        path.addCurve(to: CGPoint(x: 3.0 * scaleX, y: 9.5 * scaleY), control1: CGPoint(x: 13.09 * scaleX, y: 3.0 * scaleY), control2: CGPoint(x: 3.0 * scaleX, y: 5.91 * scaleY))
        path.addCurve(to: CGPoint(x: 9.5 * scaleX, y: 16.0 * scaleY), control1: CGPoint(x: 13.09 * scaleX, y: 3.0 * scaleY), control2: CGPoint(x: 5.91 * scaleX, y: 16.0 * scaleY))
        //c 1.61, 0.0, 3.09, -0.59, 4.23, -1.57
        path.addCurve(to: CGPoint(x: 13.73 * scaleX, y: 14.43 * scaleY), control1: CGPoint(x: 11.11 * scaleX, y: 16.0 * scaleY), control2: CGPoint(x: 12.59 * scaleX, y: 15.41 * scaleY))
        //l 0.27, 0.28
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 14.709999999999999 * scaleY))
        //v 0.79
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 15.5 * scaleY))
        //l 5.0, 4.99
        path.addLine(to: CGPoint(x: 19.0 * scaleX, y: 20.490000000000002 * scaleY))
        //L 20.49, 19.0
        path.addLine(to: CGPoint(x: 20.49 * scaleX, y: 19.0 * scaleY))
        //l -4.99, -5.0
        path.addLine(to: CGPoint(x: 15.499999999999998 * scaleX, y: 14.0 * scaleY))
        //z 
        //M 9.5, 14.0
        path.move(to: CGPoint(x: 9.5 * scaleX, y: 14.0 * scaleY))
        //C 7.01, 14.0, 5.0, 11.99, 5.0, 9.5
        path.addCurve(to: CGPoint(x: 5.0 * scaleX, y: 9.5 * scaleY), control1: CGPoint(x: 7.01 * scaleX, y: 14.0 * scaleY), control2: CGPoint(x: 5.0 * scaleX, y: 11.99 * scaleY))
        //S 7.01, 5.0, 9.5, 5.0, 14.0, 7.01, 14.0, 9.5, 11.99, 14.0, 9.5, 14.0
        path.addCurve(to: CGPoint(x: 9.5 * scaleX, y: 5.0 * scaleY), control1: CGPoint(x: 5.0 * scaleX, y: 11.99 * scaleY), control2: CGPoint(x: 7.01 * scaleX, y: 5.0 * scaleY))
        path.addCurve(to: CGPoint(x: 14.0 * scaleX, y: 9.5 * scaleY), control1: CGPoint(x: 5.0 * scaleX, y: 11.99 * scaleY), control2: CGPoint(x: 14.0 * scaleX, y: 7.01 * scaleY))
        path.addCurve(to: CGPoint(x: 9.5 * scaleX, y: 14.0 * scaleY), control1: CGPoint(x: 5.0 * scaleX, y: 11.99 * scaleY), control2: CGPoint(x: 11.99 * scaleX, y: 14.0 * scaleY))
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
