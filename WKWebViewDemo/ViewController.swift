import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var urlField: UITextField!
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        urlField.translatesAutoresizingMaskIntoConstraints = false
        webView.translatesAutoresizingMaskIntoConstraints = false

        urlField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        urlField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        urlField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: urlField.bottomAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        webView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        webView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true

        guard let url = URL(string: "https://www.google.co.jp/") else {
            return
        }

        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }

    @IBAction func urlFieldShouldReturn(_ sender: Any) {
        guard let urlString = urlField.text,
            let url = URL(string: urlString) else {
                return
        }

        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}

extension ViewController: WKNavigationDelegate {}

extension ViewController: WKUIDelegate {}
