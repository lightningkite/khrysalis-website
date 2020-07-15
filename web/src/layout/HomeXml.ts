//
// HomeXml.ts
// Created by Khrysalis XML Typescript
//
import { loadHtmlFromString, findViewById, getViewById, replaceViewWithId } from 'khrysalis/dist/views/html'
import { customViewSetDelegate } from 'khrysalis/dist/views/CustomView.actual'
import htmlForDefault from './home.html'
//! Declares com.lightningkite.khrysaliswebsite.layouts.HomeXml
export class HomeXml {
    xmlRoot!: HTMLElement;
    featureList!: HTMLDivElement;
    tutorial!: HTMLButtonElement;
    docs!: HTMLButtonElement;
    loadHtmlString(): string {
        return htmlForDefault;
    }
    setup(dependency: Window): HTMLElement {
        const view = loadHtmlFromString(this.loadHtmlString());
        this.xmlRoot = view
        this.featureList = getViewById<HTMLDivElement>(view, "feature_list");
        this.tutorial = getViewById<HTMLButtonElement>(view, "tutorial");
        this.docs = getViewById<HTMLButtonElement>(view, "docs");
        return view
    }
}
