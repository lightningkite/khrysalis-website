//
// CodeViewerXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class CodeViewerXml {

    lateinit var codeTabs: com.google.android.material.tabs.TabLayout
    lateinit var content: TextView
    lateinit var github: Button
    lateinit var textSizeBar: SeekBar
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.code_viewer, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        codeTabs = view.findViewById<com.google.android.material.tabs.TabLayout>(R.id.codeTabs)
        content = view.findViewById<TextView>(R.id.content)
        github = view.findViewById<Button>(R.id.github)
        textSizeBar = view.findViewById<SeekBar>(R.id.textSizeBar)
        
        
        
        return view
    }
}