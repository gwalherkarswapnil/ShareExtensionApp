//
//  RedViewController.swift
//
//  Created by Swapnil Gwalherkar on 14/10/24.
//

import UIKit
import Photos

class RedViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let suiteName = "group.ios.swift.share.extensions"
    let redDefaultKey = "RedColorImage"
    
    // Simply reads the selected image from NSUserDefaults and displays the
    // image
    override func viewDidLoad() {
        super.viewDidLoad()
        if let prefs = UserDefaults(suiteName: suiteName) {
            if let imageData = prefs.object(forKey: redDefaultKey) as? Data {
                DispatchQueue.main.async(execute: { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })
            }
        }
    }
}
