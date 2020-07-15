//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icChevronLeft(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 15.41, 7.41
        path.move(to: CGPoint(x: 15.41 * scaleX, y: 7.41 * scaleY))
        //L 14.0, 6.0
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 6.0 * scaleY))
        //l -6.0, 6.0, 6.0, 6.0, 1.41, -1.41
        path.addLine(to: CGPoint(x: 8.0 * scaleX, y: 12.0 * scaleY))
        path.addLine(to: CGPoint(x: 14.0 * scaleX, y: 18.0 * scaleY))
        path.addLine(to: CGPoint(x: 15.41 * scaleX, y: 16.59 * scaleY))
        //L 10.83, 12.0
        path.addLine(to: CGPoint(x: 10.83 * scaleX, y: 12.0 * scaleY))
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
