//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Christopher Chan on 6/11/16.
//  Copyright © 2016 Christopher Chan. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var trendingFeed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add scrolling
        scrollView.contentSize = trendingFeed.image!.size
        scrollView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }


}
