//
//  ViewController.swift
//  ImageScroller
//
//  Created by David Rothschild on 4/13/16.
//  Copyright © 2016 Dave Rothschild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    var originLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView = UIImageView(image: UIImage(named: "zombies.jpg"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.FlexibleWidth, . FlexibleHeight]
        scrollView.backgroundColor = UIColor.blackColor()
        scrollView.contentSize = imageView.bounds.size
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        // scrollView.contentOffset = CGPoint(x: 403, y: 682.5)
        
        originLabel = UILabel(frame: CGRect(x: 20, y: 30, width: 0, height: 0))
        originLabel.backgroundColor = UIColor.blackColor()
        originLabel.textColor = UIColor.whiteColor()
        view.addSubview(originLabel)
        
        scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - UIScrollViewDelegate

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        originLabel.text = "\(scrollView.contentOffset)"
        originLabel.sizeToFit()
    }
}

