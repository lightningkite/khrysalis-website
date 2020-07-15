//
// TabsVG.swift
// Created by Khrysalis Prototype Generator
// Sections of this file can be replaces if the marker, '(overwritten on flow generation)', is left in place.
//
package com.lightningkite.khrysaliswebsite.vg

//--- Imports

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysalis.observables.*
import com.lightningkite.khrysalis.observables.binding.*
import com.lightningkite.khrysaliswebsite.R
import com.lightningkite.khrysaliswebsite.layouts.*

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class TabsVG(
    //--- Dependencies (overwritten on flow generation)
    @unowned val root: ObservableStack<ViewGenerator>
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    //--- Provides tabs (overwritten on flow generation)
    val tabs: ObservableStack<ViewGenerator> = ObservableStack()
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Tabs"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = TabsXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.back (overwritten on flow generation)
        xml.back.onClick { this.backClick() }
        
        //--- Set Up xml.title (overwritten on flow generation)
        xml.title.bindString(ConstantObservableProperty("View Title"))
        
        //--- Set Up xml.rootStackHolder (overwritten on flow generation)
        xml.rootStackHolder.bindStack(dependency, tabs)
        
        //--- Set Up xml.home (overwritten on flow generation)
        xml.home.onClick { this.homeClick() }
        
        //--- Set Up xml.setupKhrysalis (overwritten on flow generation)
        xml.setupKhrysalis.onClick { this.setupKhrysalisClick() }
        
        //--- Set Up xml.faq (overwritten on flow generation)
        xml.faq.onClick { this.faqClick() }
        
        //--- Set Up xml.docs (overwritten on flow generation)
        xml.docs.onClick { this.docsClick() }
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
        //--- Set Initial View for tabs (overwritten on flow generation)
        this.tabs.reset(HomeVG())
    //--- Init End
    }
    
    //--- Actions
    
    //--- Action backClick (overwritten on flow generation)
    fun backClick() {
        if(this.tabs.pop()) {} else if(this.root.pop()) {}
    }
    //--- Action homeClick (overwritten on flow generation)
    fun homeClick() {
        this.tabs.reset(HomeVG())
    }
    //--- Action setupKhrysalisClick (overwritten on flow generation)
    fun setupKhrysalisClick() {
        this.tabs.reset(SetupVG())
    }
    //--- Action faqClick (overwritten on flow generation)
    fun faqClick() {
        this.tabs.reset(FaqVG(stack = this.tabs))
    }
    //--- Action docsClick (overwritten on flow generation)
    fun docsClick() {
        this.tabs.reset(DocsVG(stack = this.tabs))
    }
    
    //--- Body End
}
