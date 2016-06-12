//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Christopher Chan on 6/11/16.
//  Copyright © 2016 Christopher Chan. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textView: UIButton!
    @IBOutlet weak var photoView: UIButton!
    @IBOutlet weak var quoteView: UIButton!
    @IBOutlet weak var linkView: UIButton!
    @IBOutlet weak var chatView: UIButton!
    @IBOutlet weak var videoView: UIButton!
    
    var textViewOriginalCenter: CGPoint!
    var photoViewOriginalCenter: CGPoint!
    var quoteViewOriginalCenter: CGPoint!
    var linkViewOriginalCenter: CGPoint!
    var chatViewOriginalCenter: CGPoint!
    var videoViewOriginalCenter: CGPoint!
    
    @IBAction func nevermindButton(sender: AnyObject) {
        UIView.animateWithDuration(0.7) {
            self.quoteView.center.y -= 1200
            self.linkView.center.y -= 1200
        }
        UIView.animateWithDuration(0.5) {
            self.photoView.center.y -= 1200
            self.videoView.center.y -= 1200
        }
        UIView.animateWithDuration(0.3, animations: {
            self.textView.center.y -= 1200
            self.chatView.center.y -= 1200
        }) {(Bool) in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
            }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        textViewOriginalCenter = textView.center
        photoViewOriginalCenter = photoView.center
        videoViewOriginalCenter = videoView.center
        chatViewOriginalCenter = chatView.center
        quoteViewOriginalCenter = quoteView.center
        linkViewOriginalCenter = linkView.center
    
        super.viewWillAppear(animated)
        
        textView.center.y += 500
        photoView.center.y += 500
        videoView.center.y += 500
        chatView.center.y += 500
        quoteView.center.y += 500
        linkView.center.y += 500
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3) {
            self.textView.center.y -= 500
            self.chatView.center.y -= 500
        }
        UIView.animateWithDuration(0.5) {
            self.photoView.center.y -= 500
            self.videoView.center.y -= 500
        }
        UIView.animateWithDuration(0.7) {
            self.quoteView.center.y -= 500
            self.linkView.center.y -= 500
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
