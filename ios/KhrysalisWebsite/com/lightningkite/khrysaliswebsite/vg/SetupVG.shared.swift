//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class SetupVG: ViewGenerator {
    
    
    override public var title: String {
        get {
            return "Setup"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = SetupXml()
        var view = xml.setup(dependency)
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    override public init() {
        super.init()
    }
}
 
