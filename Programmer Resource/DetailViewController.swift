//
//  DetailViewController.swift
//  Programmer Resource
//
//  Created by Guled Ali on 3/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController: UIViewController {
    
    //Property observer
    var resource: Resource! {
        didSet {
            navigationItem.title = resource.name
        }
    }
    //labels for resourse
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descr: UILabel!
    @IBOutlet weak var url: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = resource.name
        descr.text = resource.description
        url.text = resource.url.absoluteString
           let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (DetailViewController.showWeb))
        url.addGestureRecognizer(tapGestureRecognizer)
    }
    
    //segues to the web view controller
    @objc func showWeb() {
        performSegue(withIdentifier: "showWebView", sender: self)
        
    }
    
    //segues to the web view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            let webView = segue.destination as! WebViewController
            webView.url = resource.url

        }
    }
}
