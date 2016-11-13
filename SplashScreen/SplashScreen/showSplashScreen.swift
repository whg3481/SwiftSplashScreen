//
//  showSplashScreen.swift
//  SplashScreen
//
//  Created by New User on 11/11/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

import UIKit

class showSplashScreen: UIViewController {
  
  @IBOutlet weak var welcomeMessageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
      


      let userDefaults = UserDefaults.standard
      let isSplashScreenAlreadyShown = userDefaults.bool(forKey: "IsSplashScreenLoaded")
      
      if isSplashScreenAlreadyShown == false {
        self.performAnimation()
      }
  }
  
  func performAnimation() {
    let userDefaults = UserDefaults.standard
    userDefaults.set(true, forKey: "IsSplashScreenLoaded")
    userDefaults.synchronize()
    UIView.animate(withDuration: 5.0, animations: {() -> Void in
      
      self.welcomeMessageLabel.alpha = 1.0
      }, completion: {(_ finished: Bool) -> Void in
        
        UIView.animate(withDuration: 5.0, animations: {() -> Void in
          self.welcomeMessageLabel.alpha = 0.0
        })
    })
    
    
    
    
  }
  

 


}
