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
    @IBOutlet weak var reloadButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlRequest = URLRequest(url:URL(string:targetUrl)!)
        webView.load(urlRequest)
    }

    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
}

extension ViewController: WKNavigationDelegate {}

extension ViewController: WKUIDelegate {}
