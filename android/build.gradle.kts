import com.lightningkite.khrysalis.ios.layout.mapViews
import com.lightningkite.khrysalis.ios.layout.LayoutConverter
import com.lightningkite.khrysalis.gradle.KhrysalisPluginExtension

val packageName = "com.lightningkite.khrysaliswebsite"

buildscript {
    repositories {
        mavenLocal()
    }
    dependencies {
        classpath("com.lightningkite.khrysalis:plugin:+")
    }
}

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("kotlin-android-extensions")
}

apply(plugin="com.lightningkite.khrysalis")

android {
    //    buildToolsVersion = "28.0.3"
    compileSdkVersion(29)
    defaultConfig {
        minSdkVersion(21)
        targetSdkVersion(29)
        multiDexEnabled = true
        applicationId = packageName
        versionCode = 5
        versionName = "1.0.5"
    }
    compileOptions {
        setSourceCompatibility(JavaVersion.VERSION_1_8)
        setTargetCompatibility(JavaVersion.VERSION_1_8)
    }
    buildTypes {
        //        release {
//            minifyEnabled = false
//            proguardFiles = getDefaultProguardFile("proguard-android.txt"), 'proguard-rules.pro'
//        }
    }
    packagingOptions {
        exclude("META-INF/**")
    }
}

configure<KhrysalisPluginExtension> {
    projectName = "KhrysalisWebsite"
    organizationName = "Lightning Kite"
//    swiftLayoutConversion += LayoutConverter.mapViews
//    swiftConversion = {
//        imports += listOf("KhrysalisMaps", "KhrysalisBluetooth")
//    }
}

repositories {
    maven("https://jitpack.io")
    mavenLocal()
}

val kotlin_version = "1.3.72"
dependencies {
    implementation("com.lightningkite.khrysalis:android:0.1.1")
    implementation("com.lightningkite.khrysalis:android-maps:0.1.1")
    implementation("com.lightningkite.khrysalis:android-bluetooth:0.1.1")
    testImplementation("junit:junit:4.12")
    androidTestImplementation("androidx.test:runner:1.2.0")
    androidTestImplementation("com.android.support.test.espresso:espresso-core:3.0.2")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version")
    implementation("org.jetbrains.kotlin:kotlin-reflect:$kotlin_version")
    implementation("androidx.appcompat:appcompat:1.1.0")
    implementation("com.google.android.material:material:1.0.0")
    implementation("com.android.support.constraint:constraint-layout:1.1.3")
    implementation("androidx.recyclerview:recyclerview:1.0.0")
    implementation("com.fasterxml.jackson.core:jackson-core:2.9.9")
    implementation("com.fasterxml.jackson.core:jackson-annotations:2.9.7")
    implementation("com.fasterxml.jackson.core:jackson-databind:2.9.9")
    implementation("com.squareup.okhttp3:okhttp:3.12.0")
    implementation("de.hdodenhof:circleimageview:2.2.0")
    implementation("com.squareup.picasso:picasso:2.71828")
    implementation("com.romandanylyk:pageindicatorview:1.0.3")
    implementation("com.theartofdev.edmodo:android-image-cropper:2.7.0")
    implementation("com.android.support:multidex:1.0.3")
}

tasks.create("wrapper"){

}