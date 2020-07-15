//
// RootXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './root.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.RootXml
export class RootXml {
    xmlRoot!: HTMLElement;
    rootStackHolder!: HTMLDivElement;
    dialogStackHolder!: HTMLDivElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.rootStackHolder = getViewById<HTMLDivElement>(view, "rootStackHolder");
        this.dialogStackHolder = getViewById<HTMLDivElement>(view, "dialogStackHolder");
        return view
    }
}
