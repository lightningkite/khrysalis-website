//Automatically created by Khrysalis
import UIKit
import Khrysalis

extension ResourcesDrawables {

static func buttonBackground(_ view: UIView? = nil) -> CALayer {
    let layer = CALayer()
    layer.borderWidth = 2
applyColor(view, ResourcesColors.accentSelector) { c in
    layer.borderColor = c.cgColor
}
    layer.bounds.size = CGSize(width: 100, height: 100)
    return layer
}

}
