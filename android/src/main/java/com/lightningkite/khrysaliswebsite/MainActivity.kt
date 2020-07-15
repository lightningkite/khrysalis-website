package com.lightningkite.khrysaliswebsite

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.lightningkite.khrysalis.android.KhrysalisActivity
import com.lightningkite.khrysalis.views.ViewGenerator
import com.lightningkite.khrysaliswebsite.vg.RootVG

class MainActivity : KhrysalisActivity() {
    companion object {
        val staticMain = RootVG()
    }
    override val main: ViewGenerator
        get() = staticMain
}
