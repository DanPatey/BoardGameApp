//
//  InstructionsViewController.swift
//  Penisland
//
//  Created by Dan Patey on 5/22/16.
//  Copyright © 2016 Dan Patey. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = Bundle.main.path(forResource: "instructions", ofType: "html") {
            if let htmlData = try? Data(contentsOf: URL(fileURLWithPath: htmlFile)) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
