import XCTest
import Swifter

class WKWebViewDemoUITests: XCTestCase {
    let server = HttpServer()

    override func setUp() {
        continueAfterFailure = false

        server["/"] = { request in
            return HttpResponse.ok(.text("<a href=\"\">Sample Link</a>"))
        }
        try? server.start(9080)

        XCUIApplication().launch()
    }

    func testExample() {
        let app = XCUIApplication()

        let urlInputField = app.textFields["URL Input Field"]
        urlInputField.tap()
        urlInputField.typeText("http://localhost:9080/\n")

        XCTAssert(app.webViews.links["Sample Link"].isEnabled)
    }
}
