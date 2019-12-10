import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var reloadButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let webView = webView,
            let url = URL(string: "https://www.google.co.jp/") else {
                return
        }

        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }

    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
}

extension ViewController: WKNavigationDelegate {}

extension ViewController: WKUIDelegate {}
