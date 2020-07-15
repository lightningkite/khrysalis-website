//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icCode(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 9.4, 16.6
        path.move(to: CGPoint(x: 9.4 * scaleX, y: 16.6 * scaleY))
        //L 4.8, 12.0
        path.addLine(to: CGPoint(x: 4.8 * scaleX, y: 12.0 * scaleY))
        //l 4.6, -4.6
        path.addLine(to: CGPoint(x: 9.399999999999999 * scaleX, y: 7.4 * scaleY))
        //L 8.0, 6.0
        path.addLine(to: CGPoint(x: 8.0 * scaleX, y: 6.0 * scaleY))
        //l -6.0, 6.0, 6.0, 6.0, 1.4, -1.4
        path.addLine(to: CGPoint(x: 2.0 * scaleX, y: 12.0 * scaleY))
        path.addLine(to: CGPoint(x: 8.0 * scaleX, y: 18.0 * scaleY))
        path.addLine(to: CGPoint(x: 9.4 * scaleX, y: 16.6 * scaleY))
        //z 
        //M 14.6, 16.6
        path.move(to: CGPoint(x: 14.6 * scaleX, y: 16.6 * scaleY))
        //l 4.6, -4.6, -4.6, -4.6
        path.addLine(to: CGPoint(x: 19.2 * scaleX, y: 12.000000000000002 * scaleY))
        path.addLine(to: CGPoint(x: 14.6 * scaleX, y: 7.400000000000002 * scaleY))
        //L 16.0, 6.0
        path.addLine(to: CGPoint(x: 16.0 * scaleX, y: 6.0 * scaleY))
        //l 6.0, 6.0, -6.0, 6.0, -1.4, -1.4
        path.addLine(to: CGPoint(x: 22.0 * scaleX, y: 12.0 * scaleY))
        path.addLine(to: CGPoint(x: 16.0 * scaleX, y: 18.0 * scaleY))
        path.addLine(to: CGPoint(x: 14.6 * scaleX, y: 16.6 * scaleY))
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
