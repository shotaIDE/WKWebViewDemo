import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let webView = webView,
            let url = URL(string: "https://www.google.co.jp/") else {
                return
        }

        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}

extension ViewController: WKNavigationDelegate {}

extension ViewController: WKUIDelegate {}
