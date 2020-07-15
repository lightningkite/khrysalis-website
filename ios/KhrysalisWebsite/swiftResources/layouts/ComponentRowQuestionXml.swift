//
// ComponentRowQuestionXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class ComponentRowQuestionXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = FrameLayout(frame: .zero)
        view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        view.addSubview(
            LinearLayout(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
            padding: UIEdgeInsets.zero,
            gravity: .centerFill
        ) { view in 
            self.container = view
            view.backgroundLayer = ResourcesDrawables.cardBackground(view)
            view.orientation = .x
            view.padding = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            view.gravity = .centerCenter
            
            view.addSubview(
                UILabel(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 1.0
            ) { view in 
                self.question = view
                view.font = UIFont.get(size: 20, style: [])
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
                view.textAlignment = .left
                view.baselineAdjustment = .alignCenters
            }
            
            view.addSubview(
                UIImageView(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 32, height: 32),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.image = UIImage(named: "ic_chevron_right") ?? ResourcesDrawables.icChevronRight(view).toImage()
                view.clipsToBounds = true
                view.contentMode = .scaleAspectFit
            }
            
        }
        
        xmlRoot = view
        return view
    }
    
    public unowned var container: LinearLayout!
    public unowned var question: UILabel!
    
}
