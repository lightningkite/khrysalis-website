//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icHome(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 10.0, 20.0
        path.move(to: CGPoint(x: 10.0 * scaleX, y: 20.0 * scaleY))
        //v -6.0
        path.addLine(to: CGPoint(x: 10.0 * scaleX, y: 14.0 * scaleY))
        //h 4.0
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 14.0 * scaleY))
        //v 6.0
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 20.0 * scaleY))
        //h 5.0
        path.addLine(to: CGPoint(x: 19.0 * scaleX, y: 20.0 * scaleY))
        //v -8.0
        path.addLine(to: CGPoint(x: 19.0 * scaleX, y: 12.0 * scaleY))
        //h 3.0
        path.addLine(to: CGPoint(x: 22.0 * scaleX, y: 12.0 * scaleY))
        //L 12.0, 3.0, 2.0, 12.0
        path.addLine(to: CGPoint(x: 12.0 * scaleX, y: 3.0 * scaleY))
        path.addLine(to: CGPoint(x: 2.0 * scaleX, y: 12.0 * scaleY))
        //h 3.0
        path.addLine(to: CGPoint(x: 5.0 * scaleX, y: 12.0 * scaleY))
        //v 8.0
        path.addLine(to: CGPoint(x: 5.0 * scaleX, y: 20.0 * scaleY))
        //z 
        sublayer.path = path
        sublayer.fillColor = UIColor(argb: 0xFFFFFFFF).cgColor
        return sublayer
    }())
    layer.bounds.size = CGSize(width: 24.0, height: 24.0)
    layer.scaleOverResize = true
    return layer
}

}
