//
// HomeVG.swift
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
class HomeVG(
    //--- Dependencies (overwritten on flow generation)
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Title (overwritten on flow generation)
    override val title: String get() = "Home"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = HomeXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.featureList (overwritten on flow generation)
        
        //--- Set Up xml.tutorial (overwritten on flow generation)
        xml.tutorial.onClick { this.tutorialClick() }
        
        //--- Set Up xml.docs (overwritten on flow generation)
        xml.docs.onClick { this.docsClick() }
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init
    
    init {
    //--- Init End
    }
    
    //--- Actions
    
    //--- Action tutorialClick (overwritten on flow generation)
    fun tutorialClick() {
    }
    //--- Action docsClick (overwritten on flow generation)
    fun docsClick() {
    }
    
    //--- Body End
}
