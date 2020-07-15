//
// DocsXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class DocsXml {

    lateinit var filter: EditText
    lateinit var articles: com.lightningkite.khrysalis.views.android.VerticalRecyclerView
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.docs, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        filter = view.findViewById<EditText>(R.id.filter)
        articles = view.findViewById<com.lightningkite.khrysalis.views.android.VerticalRecyclerView>(R.id.articles)
        
        
        
        return view
    }
}