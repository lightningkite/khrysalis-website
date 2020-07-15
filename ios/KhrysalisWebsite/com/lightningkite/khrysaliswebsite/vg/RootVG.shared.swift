//Package: com.lightningkite.khrysaliswebsite.vg
//Converted using Khrysalis2

import Foundation
import Khrysalis
import RxSwift
import RxRelay



public class RootVG: ViewGenerator {
    
    
    public var dialog: ObservableStack<ViewGenerator>
    public var root: ObservableStack<ViewGenerator>
    override public var title: String {
        get {
            return "Root"
        }
    }
    
    override public func generate(dependency: ViewDependency) -> View {
        var xml = RootXml()
        var view = xml.setup(dependency)
        xml.rootStackHolder.bindStack(dependency, root)
        xml.dialogStackHolder.bindStack(dependency, dialog)
        return view
    }
    override public func generate(_ dependency: ViewDependency) -> View {
        return generate(dependency: dependency)
    }
    
    override public init() {
        let dialog: ObservableStack<ViewGenerator> = ObservableStack()
        self.dialog = dialog
        let root: ObservableStack<ViewGenerator> = ObservableStack()
        self.root = root
        super.init()
        self.root.reset(TabsVG(root: self.root))
    }
}
 
