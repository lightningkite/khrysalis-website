//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class HomeVG: ViewGenerator {
    
    
    override public var title: String {
        get {
            return "Home"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = HomeXml()
        var view = xml.setup(dependency)
        xml.tutorial.onClick{ () in 
            self.tutorialClick()
        }
        xml.docs.onClick{ () in 
            self.docsClick()
        }
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    public func tutorialClick() -> Void {
    }
    
    public func docsClick() -> Void {
    }
    
    override public init() {
        super.init()
    }
}
 
