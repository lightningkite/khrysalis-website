// Generated by Khrysalis TypeScript converter - this file will be overwritten.
// File: vg/DocsVG.shared.kt
// Package: com.lightningkite.khrysaliswebsite.vg
import { DocsXml } from '../layout/DocsXml'
import { ArticleVG } from './ArticleVG.shared'
import { ViewGenerator } from 'khrysalis/dist/views/ViewGenerator.shared'
import { androidWidgetTextViewBindString } from 'khrysalis/dist/observables/binding/TextView.binding.actual'
import { ObservableStack } from 'khrysalis/dist/observables/ObservableStack.shared'
import { ComponentRowQuestionXml } from '../layout/ComponentRowQuestionXml'
import { androidxRecyclerviewWidgetRecyclerViewBind } from 'khrysalis/dist/observables/binding/RecyclerView.binding.actual'
import { ConstantObservableProperty } from 'khrysalis/dist/observables/ConstantObservableProperty.shared'

//! Declares com.lightningkite.khrysaliswebsite.vg.DocsVG
export class DocsVG extends ViewGenerator {
    public readonly stack: ObservableStack<ViewGenerator>;
    public constructor(stack: ObservableStack<ViewGenerator>) {
        super();
        this.stack = stack;
    }
    
    
    
    //! Declares com.lightningkite.khrysaliswebsite.vg.DocsVG.title
    public get title(): string { return "Docs"; }
    
    
    public generate(dependency: Window): HTMLElement {
        const xml = new DocsXml();
        
        const view = xml.setup(dependency);
        
        
        //--- Set Up xml.filter (overwritten on flow generation)
        
        //--- Set Up xml.articles (overwritten on flow generation)
        androidxRecyclerviewWidgetRecyclerViewBind(xml.articles, new ConstantObservableProperty([1, 2, 3, 4]), 1, (observable) => {
                //--- Make Subview For xml.articles (overwritten on flow generation)
                const cellXml = new ComponentRowQuestionXml();
                
                const cellView = cellXml.setup(dependency);
                
                
                //--- Set Up cellXml.container (overwritten on flow generation)
                cellXml.container.onclick = (_ev) => { _ev.stopPropagation(); 
                    this.cellXmlContainerClick();
                };
                
                //--- Set Up cellXml.question (overwritten on flow generation)
                androidWidgetTextViewBindString(cellXml.question, new ConstantObservableProperty("How do I do all the things?  It seems really hard and I need help"));
                //--- End Make Subview For xml.articles (overwritten on flow generation)
                return cellView;
        });
        
        //--- Generate End (overwritten on flow generation)
        
        return view;
    }
    
    //--- Init
    
    
    
    //--- Actions
    
    
    public cellXmlContainerClick(): void {
        this.stack.push(new ArticleVG(this.stack));
    }
    
    //--- Body End
}

