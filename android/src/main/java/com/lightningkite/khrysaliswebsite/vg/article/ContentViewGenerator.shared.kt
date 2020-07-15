package com.lightningkite.khrysaliswebsite.vg.article

import com.lightningkite.khrysalis.observables.ObservableStack
import com.lightningkite.khrysalis.unowned
import com.lightningkite.khrysalis.views.ViewGenerator

abstract class ContentViewGenerator: ViewGenerator() {
    @unowned() lateinit var stack: ObservableStack<ViewGenerator>
}