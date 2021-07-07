//
//  WebView.swift
//  Aliens
//
//  Created by Alex Levnikov on 7.07.21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    @ObservedObject var webViewModel: WebViewModel
    typealias UIViewType = WKWebView
    
    class Coordinator: NSObject,WKNavigationDelegate {
        let parent:WebView
        init(_ parent:WebView) {
            self.parent = parent
        }
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            if parent.webViewModel.goBack{
                webView.goBack()
                parent.webViewModel.goBack = false
            }
            if parent.webViewModel.goForward{
                webView.goForward()
                parent.webViewModel.goForward = false
            }
        }
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView(frame: CGRect.zero)
        view.navigationDelegate = context.coordinator
        view.allowsBackForwardNavigationGestures = true
        view.scrollView.isScrollEnabled = true
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: webViewModel.url))
        if webViewModel.goToPage{
            uiView.load(URLRequest(url: webViewModel.url))
            webViewModel.goToPage = false
        }
    }
}
