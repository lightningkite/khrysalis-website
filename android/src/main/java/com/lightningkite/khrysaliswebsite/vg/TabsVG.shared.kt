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
import com.lightningkite.khrysalis.rx.removed
import com.lightningkite.khrysalis.rx.until
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
        
        //--- Set Up xml.title
        xml.title.bindString(tabs.map { it.lastOrNull()?.title ?: "" })
        
        //--- Set Up xml.rootStackHolder (overwritten on flow generation)
        xml.rootStackHolder.bindStack(dependency, tabs)
        
        //--- Set Up xml.home
        xml.home.onClick { this.homeClick() }
        tabs.subscribeBy {
            xml.home.isChecked = it.firstOrNull() is HomeVG
        }.until(xml.home.removed)
        
        //--- Set Up xml.setupKhrysalis
        xml.setupKhrysalis.onClick { this.setupKhrysalisClick() }
        tabs.subscribeBy {
            xml.setupKhrysalis.isChecked = it.firstOrNull() is SetupVG
        }.until(xml.setupKhrysalis.removed)
        
        //--- Set Up xml.faq
        xml.faq.onClick { this.faqClick() }
        tabs.subscribeBy {
            xml.faq.isChecked = it.firstOrNull() is FaqVG
        }.until(xml.faq.removed)
        
        //--- Set Up xml.docs
        xml.docs.onClick { this.docsClick() }
        tabs.subscribeBy {
            xml.docs.isChecked = it.firstOrNull() is DocsVG
        }.until(xml.docs.removed)
        
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
