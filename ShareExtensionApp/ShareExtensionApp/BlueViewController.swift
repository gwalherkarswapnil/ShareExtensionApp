//
//  BlueViewController.swift
//
//  Created by Swapnil Gwalherkar on 14/10/24.
//

import UIKit

class BlueViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let suiteName = "group.ios.swift.share.extensions"
    let blueDefaultKey = "BlueColorImage"
    
    // Simply reads the selected image from NSUserDefaults and displays the
    // image
    override func viewDidLoad() {
        super.viewDidLoad()
        if let prefs = UserDefaults(suiteName: suiteName) {
            if let imageData = prefs.object(forKey: blueDefaultKey) as? Data {
                DispatchQueue.main.async(execute: { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })
            }
        }
    }

}
