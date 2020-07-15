//
// ArticleXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class ArticleXml {
    
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
                self.question = view
                view.font = UIFont.get(size: 24, style: ["bold"])
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
                view.textAlignment = .center
                view.baselineAdjustment = .alignCenters
            }
            
            view.addSubview(
                LinearLayout(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                padding: UIEdgeInsets.zero,
                gravity: .centerFill,
                weight: 0
            ) { view in 
                self.content = view
                view.orientation = .y
                view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
                view.gravity = .topLeft
                
                
            }
            
        }
        xmlRoot = view
        return view
    }
    
    public unowned var question: UILabel!
    public unowned var content: LinearLayout!
    
}
