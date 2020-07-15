//
// RootXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class RootXml {

    lateinit var rootStackHolder: com.lightningkite.khrysalis.views.android.SwapView
    lateinit var dialogStackHolder: com.lightningkite.khrysalis.views.android.SwapView
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.root, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        rootStackHolder = view.findViewById<com.lightningkite.khrysalis.views.android.SwapView>(R.id.rootStackHolder)
        dialogStackHolder = view.findViewById<com.lightningkite.khrysalis.views.android.SwapView>(R.id.dialogStackHolder)
        
        
        
        return view
    }
}