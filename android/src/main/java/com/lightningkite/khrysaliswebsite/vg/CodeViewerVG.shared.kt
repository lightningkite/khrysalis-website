//
// CodeViewerVG.swift
// Created by Khrysalis Prototype Generator
// Sections of this file can be replaces if the marker, '(overwritten on flow generation)', is left in place.
//
package com.lightningkite.khrysaliswebsite.vg

//--- Imports

import android.widget.*
import android.view.*
import com.lightningkite.khrysalis.*
import com.lightningkite.khrysalis.net.HttpClient
import com.lightningkite.khrysalis.net.readText
import com.lightningkite.khrysalis.views.*
import com.lightningkite.khrysalis.observables.*
import com.lightningkite.khrysalis.observables.binding.*
import com.lightningkite.khrysalis.rx.removed
import com.lightningkite.khrysalis.rx.until
import com.lightningkite.khrysaliswebsite.R
import com.lightningkite.khrysaliswebsite.layouts.*
import com.lightningkite.khrysaliswebsite.models.GitHubFile
import io.reactivex.Observable

//--- Name (overwritten on flow generation)
@Suppress("NAME_SHADOWING")
class CodeViewerVG(
    //--- Dependencies (overwritten on flow generation)
    val files: List<GitHubFile>
    //--- Extends (overwritten on flow generation)
) : ViewGenerator() {
    
    
    //--- Properties
    val currentFile = StandardObservableProperty(files.first())
    val contents = files.associate { it to HttpClient.call(it.raw)
        .readText()
        .cache()
    }

    companion object {
        val textSize = StandardObservableProperty(12)
    }

    //--- Title (overwritten on flow generation)
    override val title: String get() = "Code Viewer"
    
    //--- Generate Start (overwritten on flow generation)
    override fun generate(dependency: ViewDependency): View {
        val xml = CodeViewerXml()
        val view = xml.setup(dependency)
        
        //--- Set Up xml.codeTabs
        xml.codeTabs.bind(files, currentFile) { it.path.substringAfterLast('/') }

        //--- Set Up xml.content
        textSize.subscribeBy {
            xml.content.textSize = it.toFloat()
        }.until(xml.content.removed)
        xml.content.bindString(
            currentFile.observableNN
                .switchMap {
                    contents[it]!!
                        .toObservable()
                        .startWith("Loading...")
                        .onErrorResumeNext { it: Throwable -> return@onErrorResumeNext Observable.just(it.message) }
                }
                .asObservableProperty("Loading...")
        )

        //--- Set Up xml.github
        xml.github.onClick {
            dependency.openUrl(currentFile.value.html)
        }

        //--- Set Up xml.textSizeBar
        xml.textSizeBar.bind(6, 24, textSize)
        
        //--- Generate End (overwritten on flow generation)
        
        return view
    }
    
    //--- Init

    init {
        //--- Init End
    }

    //--- Actions

    //--- Action githubClick
    //--- Body End
}
