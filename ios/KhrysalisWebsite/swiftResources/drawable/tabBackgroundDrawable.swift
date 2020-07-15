//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func tabBackground(_ view: UIView? = nil) -> CALayer {
    let layer = CALayer()
applyColor(view, ResourcesColors.primarySelector) { c in
    layer.backgroundColor = c.cgColor
}
    layer.bounds.size = CGSize(width: 100, height: 100)
    return layer
}

}
