//
// TabsXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class TabsXml {

    lateinit var back: ImageButton
    lateinit var title: TextView
    lateinit var rootStackHolder: com.lightningkite.khrysalis.views.android.SwapView
    lateinit var home: ToggleButton
    lateinit var setupKhrysalis: ToggleButton
    lateinit var faq: ToggleButton
    lateinit var docs: ToggleButton
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.tabs, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        back = view.findViewById<ImageButton>(R.id.back)
        title = view.findViewById<TextView>(R.id.title)
        rootStackHolder = view.findViewById<com.lightningkite.khrysalis.views.android.SwapView>(R.id.rootStackHolder)
        home = view.findViewById<ToggleButton>(R.id.home)
        setupKhrysalis = view.findViewById<ToggleButton>(R.id.setup_khrysalis)
        faq = view.findViewById<ToggleButton>(R.id.faq)
        docs = view.findViewById<ToggleButton>(R.id.docs)
        
        
        
        return view
    }
}