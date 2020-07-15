//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icQuestionAnswer(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 21.0, 6.0
        path.move(to: CGPoint(x: 21.0 * scaleX, y: 6.0 * scaleY))
        //h -2.0
        path.addLine(to: CGPoint(x: 19.0 * scaleX, y: 6.0 * scaleY))
        //v 9.0
        path.addLine(to: CGPoint(x: 19.0 * scaleX, y: 15.0 * scaleY))
        //L 6.0, 15.0
        path.addLine(to: CGPoint(x: 6.0 * scaleX, y: 15.0 * scaleY))
        //v 2.0
        path.addLine(to: CGPoint(x: 6.0 * scaleX, y: 17.0 * scaleY))
        //c 0.0, 0.55, 0.45, 1.0, 1.0, 1.0
        path.addCurve(to: CGPoint(x: 7.0 * scaleX, y: 18.0 * scaleY), control1: CGPoint(x: 6.0 * scaleX, y: 17.55 * scaleY), control2: CGPoint(x: 6.45 * scaleX, y: 18.0 * scaleY))
        //h 11.0
        path.addLine(to: CGPoint(x: 18.0 * scaleX, y: 18.0 * scaleY))
        //l 4.0, 4.0
        path.addLine(to: CGPoint(x: 22.0 * scaleX, y: 22.0 * scaleY))
        //L 22.0, 7.0
        path.addLine(to: CGPoint(x: 22.0 * scaleX, y: 7.0 * scaleY))
        //c 0.0, -0.55, -0.45, -1.0, -1.0, -1.0
        path.addCurve(to: CGPoint(x: 21.0 * scaleX, y: 6.0 * scaleY), control1: CGPoint(x: 22.0 * scaleX, y: 6.45 * scaleY), control2: CGPoint(x: 21.55 * scaleX, y: 6.0 * scaleY))
        //z 
        //M 17.0, 12.0
        path.move(to: CGPoint(x: 17.0 * scaleX, y: 12.0 * scaleY))
        //L 17.0, 3.0
        path.addLine(to: CGPoint(x: 17.0 * scaleX, y: 3.0 * scaleY))
        //c 0.0, -0.55, -0.45, -1.0, -1.0, -1.0
        path.addCurve(to: CGPoint(x: 16.0 * scaleX, y: 2.0 * scaleY), control1: CGPoint(x: 17.0 * scaleX, y: 2.45 * scaleY), control2: CGPoint(x: 16.55 * scaleX, y: 2.0 * scaleY))
        //L 3.0, 2.0
        path.addLine(to: CGPoint(x: 3.0 * scaleX, y: 2.0 * scaleY))
        //c -0.55, 0.0, -1.0, 0.45, -1.0, 1.0
        path.addCurve(to: CGPoint(x: 2.0 * scaleX, y: 3.0 * scaleY), control1: CGPoint(x: 2.45 * scaleX, y: 2.0 * scaleY), control2: CGPoint(x: 2.0 * scaleX, y: 2.45 * scaleY))
        //v 14.0
        path.addLine(to: CGPoint(x: 2.0 * scaleX, y: 17.0 * scaleY))
        //l 4.0, -4.0
        path.addLine(to: CGPoint(x: 6.0 * scaleX, y: 13.0 * scaleY))
        //h 10.0
        path.addLine(to: CGPoint(x: 16.0 * scaleX, y: 13.0 * scaleY))
        //c 0.55, 0.0, 1.0, -0.45, 1.0, -1.0
        path.addCurve(to: CGPoint(x: 17.0 * scaleX, y: 12.0 * scaleY), control1: CGPoint(x: 16.55 * scaleX, y: 13.0 * scaleY), control2: CGPoint(x: 17.0 * scaleX, y: 12.55 * scaleY))
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
