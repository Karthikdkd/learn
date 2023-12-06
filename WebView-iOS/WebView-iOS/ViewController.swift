//
//  ViewController.swift
//  WebView-iOS
//
//  Created by Karthik  Datta on 05/12/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        let url = URL(string: "https://www.google.com/")
        
        
        webView.load(URLRequest(url: url!))
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
//    override func loadView() {
//        let webConfiguratoion = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguratoion)
//        webView.uiDelegate = self
//        view = webView
//    }


}

