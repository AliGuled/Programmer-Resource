//
//  WebViewController.swift
//  Programmer Resource
//
//  Created by Guled Ali on 3/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import WebKit
import UIKit

class WebViewController: UIViewController {
    
    var url: URL!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    

    
}
