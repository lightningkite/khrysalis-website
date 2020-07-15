//
// SetupXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class SetupXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = ScrollViewVertical(frame: .zero)
        view.addSubview(LinearLayout(frame: .zero)) { view in 
            view.orientation = .y
            view.padding = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            view.gravity = .centerCenter
            
            view.addSubview(
                UILabel(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.font = UIFont.get(size: 24, style: ["bold"])
                view.textString = ResourcesStrings.setUp
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
                view.textAlignment = .center
                view.baselineAdjustment = .alignCenters
            }
            
            view.addSubview(
                UILabel(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.font = UIFont.get(size: 16, style: [])
                view.textString = "It's easy to get set up!"
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
            }
            
            view.addSubview(
                UILabel(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.font = UIFont.get(size: 16, style: [])
                view.textString = "You can either fork the starter project or start from a plain Android project."
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
            }
            
            view.addSubview(
                LinearLayout(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                view.gravity = .topLeft
                
                view.addSubview(
                    UIButtonWithLayer(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                    padding: UIEdgeInsets.zero,
                    gravity: .topFill,
                    weight: 0
                ) { view in 
                    view.backgroundLayer = ResourcesDrawables.buttonBackground(view)
                    view.titleLabel?.font = UIFont.get(size: 16, style: ["bold"])
                    view.titleLabel?.textString = "Fork Starter Project (GitHub)"
                    view.titleLabel?.numberOfLines = 0
                    applyColor(view, ResourcesColors.accentSelector) { c in
                        view.titleLabel?.textColor = c
                    }
                    view.titleLabel?.textAlignment = .center
                    view.titleLabel?.baselineAdjustment = .alignCenters
                    view.textString = "Fork Starter Project (GitHub)"
                    applyColor(view, ResourcesColors.accentSelector) { c in
                        view.setTitleColor(c, for: .normal)
                    }
                    view.contentHorizontalAlignment = .center
                    view.textGravity = .centerCenter
                    view.contentMode = .scaleAspectFit
                    view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                }
                
                view.addSubview(
                    UIButtonWithLayer(frame: .zero),
                    minimumSize: CGSize(width: 0, height: 0),
                    size: CGSize(width: 0, height: 0),
                    margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                    padding: UIEdgeInsets.zero,
                    gravity: .topFill,
                    weight: 0
                ) { view in 
                    view.backgroundLayer = ResourcesDrawables.buttonBackground(view)
                    view.titleLabel?.font = UIFont.get(size: 16, style: ["bold"])
                    view.titleLabel?.textString = "From Plain Android (Guide)"
                    view.titleLabel?.numberOfLines = 0
                    applyColor(view, ResourcesColors.accentSelector) { c in
                        view.titleLabel?.textColor = c
                    }
                    view.titleLabel?.textAlignment = .center
                    view.titleLabel?.baselineAdjustment = .alignCenters
                    view.textString = "From Plain Android (Guide)"
                    applyColor(view, ResourcesColors.accentSelector) { c in
                        view.setTitleColor(c, for: .normal)
                    }
                    view.contentHorizontalAlignment = .center
                    view.textGravity = .centerCenter
                    view.contentMode = .scaleAspectFit
                    view.contentEdgeInsets = UIEdgeInsets(top: 8, left:8, bottom:8, right:8)
                }
                
            }
            
        }
        xmlRoot = view
        return view
    }
    
    
}
