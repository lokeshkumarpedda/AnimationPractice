//
//  secondVC.swift
//  AnimationPractice
//
//  Created by BridgeLabz on 29/11/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class secondVC: UIViewController {

    @IBOutlet weak var newView: UIView!
    
    var transitionManager : TransitionManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        transitionManager = TransitionManager()
        
        //MARK:- Moving the view up and down
//        let animation = CAKeyframeAnimation()
//        animation.keyPath = "position.y"
//        animation.values = [0, 300, 0]
//        animation.keyTimes = [0, 0.5 , 1]
//        animation.duration = 1
//        animation.isAdditive = true
//        
//        newView.layer.add(animation, forKey: "move")
//        
        
        //MARK:- Shaking the view
//        let animation = CAKeyframeAnimation()
//        animation.keyPath = "position.x"
//        animation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
//        animation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
//        animation.duration = 1
//        animation.isAdditive = true
//        
//        newView.layer.add(animation, forKey: "shake")
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this gets a reference to the screen that we're about to transition to
        let toViewController = segue.destination as UIViewController
        
        // instead of using the default transition animation, we'll ask
        // the segue to use our custom TransitionManager object to manage the transition animation
        toViewController.transitioningDelegate = self.transitionManager
        
    }
 

    @IBAction func unwindToViewController (sender: UIStoryboardSegue){
        
    }
    
}
