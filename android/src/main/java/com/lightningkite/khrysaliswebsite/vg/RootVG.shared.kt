//
// RootVG.swift
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
class RootVG(
    //--- Dependencies (overwritten on flow generation)
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    //--- Provides dialog (overwritten on flow generation)
    val dialog: ObservableStack<ViewGenerator> = ObservableStack()
    //--- Provides root (overwritten on flow generation)
    val root: ObservableStack<ViewGenerator> = ObservableStack()
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Root"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = RootXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.rootStackHolder (overwritten on flow generation)
        xml.rootStackHolder.bindStack(dependency, root)
        
        //--- Set Up xml.dialogStackHolder (overwritten on flow generation)
        xml.dialogStackHolder.bindStack(dependency, dialog)
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
        //--- Set Initial View for root (overwritten on flow generation)
        this.root.reset(TabsVG(root = this.root))
    //--- Init End
    }
    
    //--- Actions
    
    
    //--- Body End
}
