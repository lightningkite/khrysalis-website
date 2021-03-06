// Generated by Khrysalis TypeScript converter - this file will be overwritten.
// File: vg/TabsVG.shared.kt
// Package: com.lightningkite.khrysaliswebsite.vg
import { comLightningkiteKhrysalisViewsAndroidSwapViewBindStack } from 'khrysalis/dist/observables/binding/SwapView.binding.actual'
import { SetupVG } from './SetupVG.shared'
import { DocsVG } from './DocsVG.shared'
import { ViewGenerator } from 'khrysalis/dist/views/ViewGenerator.shared'
import { androidWidgetTextViewBindString } from 'khrysalis/dist/observables/binding/TextView.binding.actual'
import { ObservableStack } from 'khrysalis/dist/observables/ObservableStack.shared'
import { HomeVG } from './HomeVG.shared'
import { TabsXml } from '../layout/TabsXml'
import { FaqVG } from './FaqVG.shared'
import { ConstantObservableProperty } from 'khrysalis/dist/observables/ConstantObservableProperty.shared'

//! Declares com.lightningkite.khrysaliswebsite.vg.TabsVG
export class TabsVG extends ViewGenerator {
    public readonly root: ObservableStack<ViewGenerator>;
    public constructor(root: ObservableStack<ViewGenerator>) {
        super();
        this.root = root;
        this.tabs = new ObservableStack();
        this.tabs.reset(new HomeVG());
    }
    
    
    public readonly tabs: ObservableStack<ViewGenerator>;
    
    
    //! Declares com.lightningkite.khrysaliswebsite.vg.TabsVG.title
    public get title(): string { return "Tabs"; }
    
    
    public generate(dependency: Window): HTMLElement {
        const xml = new TabsXml();
        
        const view = xml.setup(dependency);
        
        
        //--- Set Up xml.back (overwritten on flow generation)
        xml.back.onclick = (_ev) => { _ev.stopPropagation(); 
            this.backClick();
        };
        
        //--- Set Up xml.title (overwritten on flow generation)
        androidWidgetTextViewBindString(xml.title, new ConstantObservableProperty("View Title"));
        
        //--- Set Up xml.rootStackHolder (overwritten on flow generation)
        comLightningkiteKhrysalisViewsAndroidSwapViewBindStack(xml.rootStackHolder, dependency, this.tabs);
        
        //--- Set Up xml.home (overwritten on flow generation)
        xml.home.onclick = (_ev) => { _ev.stopPropagation(); 
            this.homeClick();
        };
        
        //--- Set Up xml.setupKhrysalis (overwritten on flow generation)
        xml.setupKhrysalis.onclick = (_ev) => { _ev.stopPropagation(); 
            this.setupKhrysalisClick();
        };
        
        //--- Set Up xml.faq (overwritten on flow generation)
        xml.faq.onclick = (_ev) => { _ev.stopPropagation(); 
            this.faqClick();
        };
        
        //--- Set Up xml.docs (overwritten on flow generation)
        xml.docs.onclick = (_ev) => { _ev.stopPropagation(); 
            this.docsClick();
        };
        
        //--- Generate End (overwritten on flow generation)
        
        return view;
    }
    
    //--- Init
    
    
    
    //--- Actions
    
    public backClick(): void {
        if (this.tabs.pop()) {} else if (this.root.pop()) {}
    }
    public homeClick(): void {
        this.tabs.reset(new HomeVG());
    }
    public setupKhrysalisClick(): void {
        this.tabs.reset(new SetupVG());
    }
    public faqClick(): void {
        this.tabs.reset(new FaqVG(this.tabs));
    }
    public docsClick(): void {
        this.tabs.reset(new DocsVG(this.tabs));
    }
    
    //--- Body End
}

