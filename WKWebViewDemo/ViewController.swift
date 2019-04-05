//
//  ViewController.swift
//  WKWebViewDemo
//
//  Created by Shota Ide on 2019/04/06.
//  Copyright © 2019 Shota Ide. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let targetUrl = "https://www.google.co.jp/"

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlRequest = URLRequest(url:URL(string:targetUrl)!)
        webView.load(urlRequest)
    }
}

extension ViewController: WKNavigationDelegate {}

extension ViewController: WKUIDelegate {}
