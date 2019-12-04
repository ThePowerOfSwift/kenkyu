//
//  WkwebViewController.swift
//  heapsort
//
//  Created by yuta akatsu on 2019/11/11.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit
import WebKit
class WkwebViewController: UIViewController {
    @IBOutlet var wkWebView: WKWebView!
    
    var backButton: UIButton!    //@IBOutlet var backButton: UIButton!
    var forwadButton: UIButton!
    //@IBOutlet var forwadButton: UIButton!
        var targetUrl = "https://google.co.jp/"

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.

            wkWebView.frame = view.frame
            wkWebView.navigationDelegate = self as WKNavigationDelegate
            wkWebView.uiDelegate = self as? WKUIDelegate

            // スワイプでの「戻る・すすむ」を有効にする
            wkWebView.allowsBackForwardNavigationGestures = true

            let urlRequest = URLRequest(url:URL(string:targetUrl)!)
            wkWebView.load(urlRequest)
            view.addSubview(wkWebView)

            createWebControlParts()

        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

        /// 戻る・すすむボタン作成
        private func createWebControlParts() {

            let buttonSize = CGSize(width:40,height:40)
            let offseetUnderBottom:CGFloat = 60
            let yPos = (UIScreen.main.bounds.height - offseetUnderBottom)
            let buttonPadding:CGFloat = 10

            let backButtonPos = CGPoint(x:buttonPadding, y:yPos)
            let forwardButtonPos = CGPoint(x:(buttonPadding + buttonSize.width + buttonPadding), y:yPos)

            backButton = UIButton(frame: CGRect(origin: backButtonPos, size: buttonSize))
            forwadButton = UIButton(frame: CGRect(origin:forwardButtonPos, size:buttonSize))

            backButton.setTitle("<", for: .normal)
            backButton.setTitle("< ", for: .highlighted)
            backButton.setTitleColor(.white, for: .normal)
            backButton.layer.backgroundColor = UIColor.black.cgColor
            backButton.layer.opacity = 0.6
            backButton.layer.cornerRadius = 5.0
            backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
            backButton.isHidden = true
            view.addSubview(backButton)

            forwadButton.setTitle(">", for: .normal)
            forwadButton.setTitle(" >", for: .highlighted)
            forwadButton.setTitleColor(.white, for: .normal)
            forwadButton.layer.backgroundColor = UIColor.black.cgColor
            forwadButton.layer.opacity = 0.6
            forwadButton.layer.cornerRadius = 5.0
            forwadButton.addTarget(self, action: #selector(goForward), for: .touchUpInside)
            forwadButton.isHidden = true
            view.addSubview(forwadButton)

        }

        @objc private func goBack() {
            wkWebView.goBack()
        }

        @objc private func goForward() {
            wkWebView.goForward()
        }

    }

    extension WkwebViewController: WKNavigationDelegate {

        // ウェブのロード完了時に呼び出される
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {

            backButton.isHidden = (webView.canGoBack) ? false : true
            forwadButton.isHidden = (webView.canGoForward) ? false : true
        }
    }

    // target=_blank対策
    extension WkwebViewController: WKUIDelegate {

        func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration,
                     for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {

            if navigationAction.targetFrame == nil {
                webView.load(navigationAction.request)
            }

            return nil
        }

    }
