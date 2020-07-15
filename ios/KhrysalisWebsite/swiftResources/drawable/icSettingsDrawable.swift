//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icSettings(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(24) / 24.0
    let scaleY: CGFloat = CGFloat(24) / 24.0
    let layer = CALayer()
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 19.1, 12.9
        path.move(to: CGPoint(x: 19.1 * scaleX, y: 12.9 * scaleY))
        //a 2.8, 2.8, 0.0, 0.0, 0.0, 0.1, -0.9, 2.8, 2.8, 0.0, 0.0, 0.0, -0.1, -0.9
        path.arcTo(radius: CGSize(width: 2.8 * scaleX, height: 2.8 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 19.200000000000003 * scaleX, y: 12.0 * scaleY))
        path.arcTo(radius: CGSize(width: 2.8 * scaleX, height: 2.8 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 19.0 * scaleX, y: 12.0 * scaleY))
        //l 2.1, -1.6
        path.addLine(to: CGPoint(x: 21.200000000000003 * scaleX, y: 11.3 * scaleY))
        //a 0.7, 0.7, 0.0, 0.0, 0.0, 0.1, -0.6
        path.arcTo(radius: CGSize(width: 0.7 * scaleX, height: 0.7 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 21.300000000000004 * scaleX, y: 10.700000000000001 * scaleY))
        //L 19.4, 5.5
        path.addLine(to: CGPoint(x: 19.4 * scaleX, y: 5.5 * scaleY))
        //a 0.7, 0.7, 0.0, 0.0, 0.0, -0.6, -0.2
        path.arcTo(radius: CGSize(width: 0.7 * scaleX, height: 0.7 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 18.799999999999997 * scaleX, y: 5.3 * scaleY))
        //l -2.4, 1.0
        path.addLine(to: CGPoint(x: 17.0 * scaleX, y: 6.5 * scaleY))
        //a 6.5, 6.5, 0.0, 0.0, 0.0, -1.6, -0.9
        path.arcTo(radius: CGSize(width: 6.5 * scaleX, height: 6.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 15.4 * scaleX, y: 5.6 * scaleY))
        //l -0.4, -2.6
        path.addLine(to: CGPoint(x: 16.6 * scaleX, y: 3.9 * scaleY))
        //a 0.5, 0.5, 0.0, 0.0, 0.0, -0.5, -0.4
        path.arcTo(radius: CGSize(width: 0.5 * scaleX, height: 0.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 16.1 * scaleX, y: 3.5 * scaleY))
        //H 10.1
        path.addLine(to: CGPoint(x: 10.1 * scaleX, y: 3.9 * scaleY))
        //a 0.5, 0.5, 0.0, 0.0, 0.0, -0.5, 0.4
        path.arcTo(radius: CGSize(width: 0.5 * scaleX, height: 0.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 9.6 * scaleX, y: 4.3 * scaleY))
        //L 9.3, 5.4
        path.addLine(to: CGPoint(x: 9.3 * scaleX, y: 5.4 * scaleY))
        //a 5.6, 5.6, 0.0, 0.0, 0.0, -1.7, 0.9
        path.arcTo(radius: CGSize(width: 5.6 * scaleX, height: 5.6 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 7.6000000000000005 * scaleX, y: 6.300000000000001 * scaleY))
        //l -2.4, -1.0
        path.addLine(to: CGPoint(x: 6.9 * scaleX, y: 4.4 * scaleY))
        //a 0.4, 0.4, 0.0, 0.0, 0.0, -0.5, 0.2
        path.arcTo(radius: CGSize(width: 0.4 * scaleX, height: 0.4 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 6.4 * scaleX, y: 4.6000000000000005 * scaleY))
        //l -2.0, 3.4
        path.addLine(to: CGPoint(x: 4.9 * scaleX, y: 7.800000000000001 * scaleY))
        //c -0.1, 0.2, 0.0, 0.4, 0.2, 0.6
        path.addCurve(to: CGPoint(x: 5.1000000000000005 * scaleX, y: 8.4 * scaleY), control1: CGPoint(x: 4.800000000000001 * scaleX, y: 8.0 * scaleY), control2: CGPoint(x: 4.9 * scaleX, y: 8.200000000000001 * scaleY))
        //l 2.0, 1.6
        path.addLine(to: CGPoint(x: 7.1000000000000005 * scaleX, y: 10.0 * scaleY))
        //a 2.8, 2.8, 0.0, 0.0, 0.0, -0.1, 0.9, 2.8, 2.8, 0.0, 0.0, 0.0, 0.1, 0.9
        path.arcTo(radius: CGSize(width: 2.8 * scaleX, height: 2.8 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 7.000000000000001 * scaleX, y: 10.9 * scaleY))
        path.arcTo(radius: CGSize(width: 2.8 * scaleX, height: 2.8 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 7.2 * scaleX, y: 10.9 * scaleY))
        //L 2.8, 14.5
        path.addLine(to: CGPoint(x: 2.8 * scaleX, y: 14.5 * scaleY))
        //a 0.7, 0.7, 0.0, 0.0, 0.0, -0.1, 0.6
        path.arcTo(radius: CGSize(width: 0.7 * scaleX, height: 0.7 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 2.6999999999999997 * scaleX, y: 15.1 * scaleY))
        //l 1.9, 3.4
        path.addLine(to: CGPoint(x: 4.699999999999999 * scaleX, y: 17.9 * scaleY))
        //a 0.7, 0.7, 0.0, 0.0, 0.0, 0.6, 0.2
        path.arcTo(radius: CGSize(width: 0.7 * scaleX, height: 0.7 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 5.299999999999999 * scaleX, y: 18.099999999999998 * scaleY))
        //l 2.4, -1.0
        path.addLine(to: CGPoint(x: 7.1 * scaleX, y: 16.9 * scaleY))
        //a 6.5, 6.5, 0.0, 0.0, 0.0, 1.6, 0.9
        path.arcTo(radius: CGSize(width: 6.5 * scaleX, height: 6.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 8.7 * scaleX, y: 17.799999999999997 * scaleY))
        //l 0.4, 2.6
        path.addLine(to: CGPoint(x: 7.5 * scaleX, y: 19.5 * scaleY))
        //a 0.5, 0.5, 0.0, 0.0, 0.0, 0.5, 0.4
        path.arcTo(radius: CGSize(width: 0.5 * scaleX, height: 0.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 8.0 * scaleX, y: 19.9 * scaleY))
        //h 3.8
        path.addLine(to: CGPoint(x: 11.3 * scaleX, y: 19.5 * scaleY))
        //a 0.5, 0.5, 0.0, 0.0, 0.0, 0.5, -0.4
        path.arcTo(radius: CGSize(width: 0.5 * scaleX, height: 0.5 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 11.8 * scaleX, y: 19.1 * scaleY))
        //l 0.3, -2.6
        path.addLine(to: CGPoint(x: 11.600000000000001 * scaleX, y: 16.9 * scaleY))
        //a 5.6, 5.6, 0.0, 0.0, 0.0, 1.7, -0.9
        path.arcTo(radius: CGSize(width: 5.6 * scaleX, height: 5.6 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 13.3 * scaleX, y: 15.999999999999998 * scaleY))
        //l 2.4, 1.0
        path.addLine(to: CGPoint(x: 14.000000000000002 * scaleX, y: 17.9 * scaleY))
        //a 0.4, 0.4, 0.0, 0.0, 0.0, 0.5, -0.2
        path.arcTo(radius: CGSize(width: 0.4 * scaleX, height: 0.4 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: false, end: CGPoint(x: 14.500000000000002 * scaleX, y: 17.7 * scaleY))
        //l 2.0, -3.4
        path.addLine(to: CGPoint(x: 16.0 * scaleX, y: 14.499999999999998 * scaleY))
        //c 0.1, -0.2, 0.0, -0.4, -0.2, -0.6
        path.addCurve(to: CGPoint(x: 15.8 * scaleX, y: 13.899999999999999 * scaleY), control1: CGPoint(x: 16.1 * scaleX, y: 14.299999999999999 * scaleY), control2: CGPoint(x: 16.0 * scaleX, y: 14.099999999999998 * scaleY))
        //Z 
        //M 12.0, 15.6
        path.move(to: CGPoint(x: 12.0 * scaleX, y: 15.6 * scaleY))
        //A 3.6, 3.6, 0.0, 1.0, 1.0, 15.6, 12.0, 3.6, 3.6, 0.0, 0.0, 1.0, 12.0, 15.6
        path.arcTo(radius: CGSize(width: 3.6 * scaleX, height: 3.6 * scaleY), rotation: 0.0, largeArcFlag: true, sweepFlag: true, end: CGPoint(x: 15.6 * scaleX, y: 12.0 * scaleY))
        path.arcTo(radius: CGSize(width: 3.6 * scaleX, height: 3.6 * scaleY), rotation: 0.0, largeArcFlag: false, sweepFlag: true, end: CGPoint(x: 12.0 * scaleX, y: 15.6 * scaleY))
        //Z 
        sublayer.path = path
        sublayer.fillColor = UIColor(argb: 0xFFFFFFFF).cgColor
        return sublayer
    }())
    layer.bounds.size = CGSize(width: 24.0, height: 24.0)
    layer.scaleOverResize = true
    return layer
}

}
