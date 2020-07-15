//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func importantButtonBackground(_ view: UIView? = nil) -> CALayer {
    let layer = CALayer()
applyColor(view, ResourcesColors.accentSelector) { c in
    layer.backgroundColor = c.cgColor
}
    layer.bounds.size = CGSize(width: 100, height: 100)
    return layer
}

}
