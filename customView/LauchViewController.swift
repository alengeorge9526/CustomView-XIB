//
//  LauchViewController.swift
//  customView
//
//  Created by Alen George on 08/09/23.
//

import UIKit

class LauchViewController: UIViewController {
    
    @IBOutlet weak var lauchOriginalView: lauchView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = Bundle.main.loadNibNamed("lauchView", owner: self, options: nil)?.first as! lauchView
        lauchOriginalView.addSubview(customView)
        customView.launchImage.loadGif(name: "intro")
    }
}
