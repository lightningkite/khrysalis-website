//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func icLauncherForeground(_ view: UIView? = nil) -> CALayer {
    let scaleX: CGFloat = CGFloat(108) / 108.0
    let scaleY: CGFloat = CGFloat(108) / 108.0
    let layer = CALayer()
    layer.addSublayer({
        let mask = CAShapeLayer()
        let path = CGMutablePath()
        //M 31.0, 63.928
        path.move(to: CGPoint(x: 31.0 * scaleX, y: 63.928 * scaleY))
        //c 0.0, 0.0, 6.4, -11.0, 12.1, -13.1
        path.addCurve(to: CGPoint(x: 43.1 * scaleX, y: 50.827999999999996 * scaleY), control1: CGPoint(x: 31.0 * scaleX, y: 63.928 * scaleY), control2: CGPoint(x: 37.4 * scaleX, y: 52.928 * scaleY))
        //c 7.2, -2.6, 26.0, -1.4, 26.0, -1.4
        path.addCurve(to: CGPoint(x: 69.1 * scaleX, y: 49.428 * scaleY), control1: CGPoint(x: 50.300000000000004 * scaleX, y: 48.227999999999994 * scaleY), control2: CGPoint(x: 69.1 * scaleX, y: 49.428 * scaleY))
        //l 38.1, 38.1
        path.addLine(to: CGPoint(x: 107.19999999999999 * scaleX, y: 87.52799999999999 * scaleY))
        //L 107.0, 108.928
        path.addLine(to: CGPoint(x: 107.0 * scaleX, y: 108.928 * scaleY))
        //l -32.0, -1.0
        path.addLine(to: CGPoint(x: 75.0 * scaleX, y: 107.928 * scaleY))
        //L 31.0, 63.928
        path.addLine(to: CGPoint(x: 31.0 * scaleX, y: 63.928 * scaleY))
        //z 
        mask.path = path
        let gradient = CAGradientLayer()
        gradient.mask = mask
        gradient.startPoint = CGPoint(x: 0.39767777777777774, y: 0.4592400925925926)
        gradient.endPoint = CGPoint(x: 0.7948849074074075, y: 0.8564472222222222)
        gradient.colors = [UIColor(argb: 0x44000000).cgColor, UIColor(argb: 0x00000000).cgColor]
        gradient.frame = CGRect(x: 0, y: 0, width: 108.0, height: 108.0)
        return gradient
    }())
    layer.addSublayer({
        let sublayer = CAShapeLayer()
        let path = CGMutablePath()
        //M 65.3, 45.828
        path.move(to: CGPoint(x: 65.3 * scaleX, y: 45.828 * scaleY))
        //l 3.8, -6.6
        path.addLine(to: CGPoint(x: 69.1 * scaleX, y: 39.228 * scaleY))
        //c 0.2, -0.4, 0.1, -0.9, -0.3, -1.1
        path.addCurve(to: CGPoint(x: 68.8 * scaleX, y: 38.128 * scaleY), control1: CGPoint(x: 69.3 * scaleX, y: 38.828 * scaleY), control2: CGPoint(x: 69.19999999999999 * scaleX, y: 38.328 * scaleY))
        //c -0.4, -0.2, -0.9, -0.1, -1.1, 0.3
        path.addCurve(to: CGPoint(x: 67.7 * scaleX, y: 38.428 * scaleY), control1: CGPoint(x: 68.39999999999999 * scaleX, y: 37.928 * scaleY), control2: CGPoint(x: 67.89999999999999 * scaleX, y: 38.028 * scaleY))
        //l -3.9, 6.7
        path.addLine(to: CGPoint(x: 63.800000000000004 * scaleX, y: 45.128 * scaleY))
        //c -6.3, -2.8, -13.4, -2.8, -19.7, 0.0
        path.addCurve(to: CGPoint(x: 44.10000000000001 * scaleX, y: 45.128 * scaleY), control1: CGPoint(x: 57.50000000000001 * scaleX, y: 42.328 * scaleY), control2: CGPoint(x: 50.400000000000006 * scaleX, y: 42.328 * scaleY))
        //l -3.9, -6.7
        path.addLine(to: CGPoint(x: 40.20000000000001 * scaleX, y: 38.428 * scaleY))
        //c -0.2, -0.4, -0.7, -0.5, -1.1, -0.3
        path.addCurve(to: CGPoint(x: 39.10000000000001 * scaleX, y: 38.128 * scaleY), control1: CGPoint(x: 40.00000000000001 * scaleX, y: 38.028 * scaleY), control2: CGPoint(x: 39.50000000000001 * scaleX, y: 37.928 * scaleY))
        //C 38.8, 38.328, 38.7, 38.828, 38.9, 39.228
        path.addCurve(to: CGPoint(x: 38.9 * scaleX, y: 39.228 * scaleY), control1: CGPoint(x: 38.8 * scaleX, y: 38.328 * scaleY), control2: CGPoint(x: 38.7 * scaleX, y: 38.828 * scaleY))
        //l 3.8, 6.6
        path.addLine(to: CGPoint(x: 42.699999999999996 * scaleX, y: 45.828 * scaleY))
        //C 36.2, 49.428, 31.7, 56.028, 31.0, 63.928
        path.addCurve(to: CGPoint(x: 31.0 * scaleX, y: 63.928 * scaleY), control1: CGPoint(x: 36.2 * scaleX, y: 49.428 * scaleY), control2: CGPoint(x: 31.7 * scaleX, y: 56.028 * scaleY))
        //h 46.0
        path.addLine(to: CGPoint(x: 77.0 * scaleX, y: 63.928 * scaleY))
        //C 76.3, 56.028, 71.8, 49.428, 65.3, 45.828
        path.addCurve(to: CGPoint(x: 65.3 * scaleX, y: 45.828 * scaleY), control1: CGPoint(x: 76.3 * scaleX, y: 56.028 * scaleY), control2: CGPoint(x: 71.8 * scaleX, y: 49.428 * scaleY))
        //z 
        //M 43.4, 57.328
        path.move(to: CGPoint(x: 43.4 * scaleX, y: 57.328 * scaleY))
        //c -0.8, 0.0, -1.5, -0.5, -1.8, -1.2
        path.addCurve(to: CGPoint(x: 41.6 * scaleX, y: 56.128 * scaleY), control1: CGPoint(x: 42.6 * scaleX, y: 57.328 * scaleY), control2: CGPoint(x: 41.9 * scaleX, y: 56.828 * scaleY))
        //c -0.3, -0.7, -0.1, -1.5, 0.4, -2.1
        path.addCurve(to: CGPoint(x: 42.0 * scaleX, y: 54.028 * scaleY), control1: CGPoint(x: 41.300000000000004 * scaleX, y: 55.428 * scaleY), control2: CGPoint(x: 41.5 * scaleX, y: 54.628 * scaleY))
        //c 0.5, -0.5, 1.4, -0.7, 2.1, -0.4
        path.addCurve(to: CGPoint(x: 44.1 * scaleX, y: 53.628 * scaleY), control1: CGPoint(x: 42.5 * scaleX, y: 53.528 * scaleY), control2: CGPoint(x: 43.4 * scaleX, y: 53.327999999999996 * scaleY))
        //c 0.7, 0.3, 1.2, 1.0, 1.2, 1.8
        path.addCurve(to: CGPoint(x: 45.300000000000004 * scaleX, y: 55.428 * scaleY), control1: CGPoint(x: 44.800000000000004 * scaleX, y: 53.928 * scaleY), control2: CGPoint(x: 45.300000000000004 * scaleX, y: 54.628 * scaleY))
        //C 45.3, 56.528, 44.5, 57.328, 43.4, 57.328
        path.addCurve(to: CGPoint(x: 43.4 * scaleX, y: 57.328 * scaleY), control1: CGPoint(x: 45.3 * scaleX, y: 56.528 * scaleY), control2: CGPoint(x: 44.5 * scaleX, y: 57.328 * scaleY))
        //L 43.4, 57.328
        path.addLine(to: CGPoint(x: 43.4 * scaleX, y: 57.328 * scaleY))
        //z 
        //M 64.6, 57.328
        path.move(to: CGPoint(x: 64.6 * scaleX, y: 57.328 * scaleY))
        //c -0.8, 0.0, -1.5, -0.5, -1.8, -1.2
        path.addCurve(to: CGPoint(x: 62.8 * scaleX, y: 56.128 * scaleY), control1: CGPoint(x: 63.8 * scaleX, y: 57.328 * scaleY), control2: CGPoint(x: 63.099999999999994 * scaleX, y: 56.828 * scaleY))
        //s -0.1, -1.5, 0.4, -2.1
        path.addCurve(to: CGPoint(x: 63.199999999999996 * scaleX, y: 54.028 * scaleY), control1: CGPoint(x: 63.099999999999994 * scaleX, y: 56.828 * scaleY), control2: CGPoint(x: 62.699999999999996 * scaleX, y: 54.628 * scaleY))
        //c 0.5, -0.5, 1.4, -0.7, 2.1, -0.4
        path.addCurve(to: CGPoint(x: 65.3 * scaleX, y: 53.628 * scaleY), control1: CGPoint(x: 63.699999999999996 * scaleX, y: 53.528 * scaleY), control2: CGPoint(x: 64.6 * scaleX, y: 53.327999999999996 * scaleY))
        //c 0.7, 0.3, 1.2, 1.0, 1.2, 1.8
        path.addCurve(to: CGPoint(x: 66.5 * scaleX, y: 55.428 * scaleY), control1: CGPoint(x: 66.0 * scaleX, y: 53.928 * scaleY), control2: CGPoint(x: 66.5 * scaleX, y: 54.628 * scaleY))
        //C 66.5, 56.528, 65.6, 57.328, 64.6, 57.328
        path.addCurve(to: CGPoint(x: 64.6 * scaleX, y: 57.328 * scaleY), control1: CGPoint(x: 66.5 * scaleX, y: 56.528 * scaleY), control2: CGPoint(x: 65.6 * scaleX, y: 57.328 * scaleY))
        //L 64.6, 57.328
        path.addLine(to: CGPoint(x: 64.6 * scaleX, y: 57.328 * scaleY))
        //z 
        sublayer.path = path
        sublayer.fillColor = UIColor(argb: 0xFFFFFFFF).cgColor
        sublayer.strokeColor = UIColor(argb: 0x00000000).cgColor
        return sublayer
    }())
    layer.bounds.size = CGSize(width: 108.0, height: 108.0)
    layer.scaleOverResize = true
    return layer
}

}
