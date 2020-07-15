//
// ArticleXml.kt
// Created by Khrysalis XML Android
//
package com.lightningkite.khrysaliswebsite.layouts

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysaliswebsite.R

class ArticleXml {

    lateinit var question: TextView
    lateinit var content: LinearLayout
    
    
    lateinit var xmlRoot: View

    fun setup(dependency: ViewDependency): View {
        val view = LayoutInflater.from(dependency.context).inflate(R.layout.article, null, false)
        return setup(view)
    }
    fun setup(view: View): View {
        xmlRoot = view
        question = view.findViewById<TextView>(R.id.question)
        content = view.findViewById<LinearLayout>(R.id.content)
        
        
        
        return view
    }
}