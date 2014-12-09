//
//  ViewController.swift
//  Sexy Apps
//
//  Created by Clayton McIlrath on 12/8/14.
//  Copyright (c) 2014 SwiftCast.TV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var aboutOverlay: UIVisualEffectView?

  @IBOutlet weak var loginWindow: UIView!
  @IBOutlet weak var usernameField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  
  @IBAction func loginAction(sender: AnyObject)
  {
    UIView.animateWithDuration(0.1, animations: {self.usernameField.frame.origin.x = 15}, completion: { finish in
      UIView.animateWithDuration(0.1, animations: {self.usernameField.frame.origin.x = 25}, completion: { finish in
        UIView.animateWithDuration(0.1, animations: {self.usernameField.frame.origin.x = 20})
      })
    })
  }
  
  @IBAction func showAboutWindow(sender: AnyObject)
  {
    aboutOverlay = UIVisualEffectView(effect: UIBlurEffect(style: .Light)) as UIVisualEffectView
    aboutOverlay!.frame = view.bounds
    aboutOverlay!.autoresizingMask = .FlexibleHeight | .FlexibleWidth
    aboutOverlay!.layer.zPosition = 1
    aboutOverlay!.hidden = false
    
    let w = CGFloat(150)
    let h = CGFloat(50)
    let x = (view.frame.width - w) / 2
    let y = (view.frame.height - h) / 2
    
    let label = UILabel(frame: CGRectMake(x, y, w, h))
    label.textColor = .blackColor()
    label.text = "Made with love by SwiftCast.TV"
    label.numberOfLines = 0
    label.textAlignment = .Center
    
    aboutOverlay!.addSubview(label)
    
    view.addSubview(aboutOverlay!)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
  {
    if (aboutOverlay != nil)
    {
      aboutOverlay!.hidden = true
    }
  }


}

