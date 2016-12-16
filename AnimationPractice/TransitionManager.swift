//
//  TransitionManager.swift
//  AnimationPractice
//
//  Created by BridgeLabz on 02/12/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class TransitionManager: NSObject ,UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate{

    
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval{
        return 1
    }
    
    // This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning){
        // get reference to our fromView, toView and the container view that we should perform the transition in
        let container = transitionContext.containerView
        
        let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
        let toView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
        
        // set up from 2D transforms that we'll use in the animation
//        let offScreenRight = CGAffineTransform(translationX: container.frame.width, y: 0)
//        let offScreenLeft = CGAffineTransform(translationX: -container.frame.width, y: 0)
//        
                let offScreenRight = CGAffineTransform(translationX: 0, y: 0)
                let offScreenLeft = CGAffineTransform(translationX: 0, y: 0)
        

        // start the toView to the right of the screen
        //toView.transform = offScreenRight
        
        // add the both views to our view controller
        container.addSubview(toView)
        container.addSubview(fromView)
        
        // get the duration of the animation
        // DON'T just type '0.5s' -- the reason why won't make sense until the next post
        // but for now it's important to just follow this approach
        let duration = self.transitionDuration(using: transitionContext)
        
        // perform the animation!
        // for this example, just slid both fromView and toView to the left at the same time
        // meaning fromView is pushed off the screen and toView slides into view
        // we also use the block animation usingSpringWithDamping for a little bounce
        toView.alpha = 0
        
        let screens : (from:UIViewController, to:UIViewController) = (transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)!, transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)!)
        
        // assign references to our menu view controller and the 'bottom' view controller from the tuple
        // remember that our menuViewController will alternate between the from and to view controller depending if we're presenting or dismissing

        UIView.animate(withDuration: duration, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: .curveEaseOut, animations: {
            fromView.alpha = 0
            //fromView.transform = offScreenLeft
            //toView.transform = CGAffineTransform(translationX: 0, y: 0)
            toView.alpha = 1
            
        }, completion: { finished in
            // tell our transitionContext object that we've finished animating
            transitionContext.completeTransition(true)
            
        })
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        return self
    }
    
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        return self
    }
    
    
}
