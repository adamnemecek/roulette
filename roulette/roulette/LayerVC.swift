//
//  LayerVC.swift
//  roulette
//
//  Created by C.H Lee on 16/07/2017.
//  Copyright © 2017 gz. All rights reserved.
//

import UIKit

class LayerVC: UIViewController {
    
    @IBOutlet weak var rouletteView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        rouletteView.layer.contents = UIImage(named: "disk")?.cgImage
        rouletteView.layer.contentsGravity = "resizeAspect"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rotateClicked(_ sender: Any) {
        GZLogFunc()
        
        let rotate = CABasicAnimation(keyPath: "transform.rotation.z")
        let toValue = Double.pi * 21
        rotate.duration = 2
        rotate.fromValue = 0
//        rotate.isRemovedOnCompletion = false
        rotate.fillMode = kCAFillModeForwards
        rotate.toValue = toValue
        
        rouletteView.layer.transform = CATransform3DMakeRotation(CGFloat(toValue), 0, 0, 1)
        self.rouletteView.layer.add(rotate, forKey: "")
    }
}
