import UIKit
import WebKit
class WebViewController: UIViewController {
    
    
   
    
  
    var webView: WKWebView!
   
    override func loadView() {
        
        
        // 2 WKWebViewConfiguration の生成
        let webConfiguration = WKWebViewConfiguration()
     webConfiguration.allowsInlineMediaPlayback = true

    webConfiguration.mediaTypesRequiringUserActionForPlayback = .all
       
        // 3 WKWebView に Configuration を引き渡し initialize
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        // 4 WKUIDelegate の移譲先として self を登録
        webView.uiDelegate = self
        // 5 WKNavigationDelegate の移譲先として self を登録
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        // 6 view に webView を割り当て
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WKWebViewを最背面に移動
        self.view.sendSubviewToBack(webView)
       
        
        
   
        
        let webConfiguration = WKWebViewConfiguration()
        // Fix Fullscreen mode for video and autoplay
        webConfiguration.preferences.javaScriptEnabled = true
      
        webConfiguration.allowsInlineMediaPlayback = true
        
        // 7 URLオブジェクトを生成
        let myURL = URL(string:"https://www.google.com　")
        // 8 URLRequestオブジェクトを生成
        let myRequest = URLRequest(url: myURL!)
        
        // 9 URLを WebView にロード
        webView.load(myRequest)
        // WKWebViewを最背面に移動
        self.view.sendSubviewToBack(webView)
    }
    
    
}
extension WebViewController: WKUIDelegate {
    // delegate
}

// MARK: - 11 WKWebView WKNavigation delegate
extension WebViewController: WKNavigationDelegate {
    // delegate
}


func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
    print("遷移開始")
}

func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    print("読み込み完了")
    print(webView.title as Any)
}


