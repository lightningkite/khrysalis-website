//
// FaqXml.swift
// Created by Khrysalis XML
//

import UIKit
import Khrysalis

public class FaqXml {
    
    public unowned var xmlRoot: UIView!
    public func setup(_ dependency: ViewDependency) -> UIView {
        let view = LinearLayout(frame: .zero)
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
            view.textString = ResourcesStrings.frequentlyAskedQuestions
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
            view.orientation = .x
            view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            view.gravity = .centerCenter
            
            view.addSubview(
                UIImageView(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
                gravity: .centerCenter,
                weight: 0
            ) { view in 
                view.image = UIImage(named: "ic_search") ?? ResourcesDrawables.icSearch(view).toImage()
                view.clipsToBounds = true
                view.contentMode = .scaleAspectFit
            }
            
            view.addSubview(
                UITextField(frame: .zero),
                minimumSize: CGSize(width: 0, height: 0),
                size: CGSize(width: 0, height: 0),
                margin: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
                padding: UIEdgeInsets.zero,
                gravity: .centerCenter,
                weight: 1.0
            ) { view in 
                self.filter = view
                view.placeholder = ResourcesStrings.filter
                view.backgroundLayer = view.underlineLayer(boldColor: ResourcesColors.foreground, hintColor: nil)
                view.font = UIFont.get(size: 16, style: [])
                view.numberOfLines = 0
                applyColor(view, ResourcesColors.foreground) { c in
                    view.textColor = c
                }
            }
            
        }
        
        view.addSubview(
            UITableView(frame: .zero),
            minimumSize: CGSize(width: 0, height: 0),
            size: CGSize(width: 0, height: 0),
            margin: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            padding: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0),
            gravity: .centerFill,
            weight: 1.0
        ) { view in 
            self.questions = view
            view.separatorStyle = .none
            view.separatorStyle = .none
            view.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            view.backgroundColor = UIColor.clear
        }
        
        xmlRoot = view
        return view
    }
    
    public unowned var filter: UITextField!
    public unowned var questions: UITableView!
    
}
