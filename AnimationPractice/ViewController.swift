//
//  ViewController.swift
//  AnimationPractice
//
//  Created by BridgeLabz on 20/11/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var button: UIButton!

    let button1 = UIButton()
    let button2 = UIButton()
    var contain = UIView()

    
    
//    let container = UIView()
//    
//    let redSquare = UIView()
//    let blueSquare = UIView()
//    
    
    //MARK:- Pages opening
    @IBAction func buttonPressed(_ sender: UIButton) {
//        UIView.transition(with: contain, duration: 1.0, options: .transitionFlipFromTop, animations: {
//                        self.button1.removeFromSuperview()
//                        self.contain.addSubview(self.button2)
//                    }, completion: nil)
    }
    
    @IBOutlet weak var subView: UIView!
    
    func firstPress(){
        UIView.transition(with: contain, duration: 1.0, options: .transitionFlipFromTop, animations: {
            self.button1.removeFromSuperview()
            self.contain.addSubview(self.button2)
        }, completion: nil)
    }
    
    func secondPress(){
        UIView.transition(with: contain, duration: 1.0, options: .transitionFlipFromBottom, animations: {
            self.button2.removeFromSuperview()
            self.contain.addSubview(self.button1)
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contain.frame = CGRect(x: 10, y: 10, width: 100, height: 50)
        self.view.addSubview(contain)

        self.button1.frame = CGRect(x: 10, y: 10, width: 100, height: 50)
        self.button1.backgroundColor = UIColor.blue
        self.button1.setTitle("HELLO", for: .normal)
        self.button1.addTarget(self, action: #selector(self.firstPress), for: .touchUpInside)
        self.contain.addSubview(button1)
        
        button2.frame = CGRect(x: 10, y: 10, width: 100, height: 50)
        button2.backgroundColor = UIColor.red
        button2.setTitle("BYE", for: .normal)
        
        button2.addTarget(self, action: #selector(self.secondPress), for: .touchUpInside)
        
        
       
        
        
        
        
        
        //MARK:- Rotating view
//        redSquare.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        redSquare.backgroundColor = UIColor.yellow
//        self.view.addSubview(redSquare)
//        
//        let fullRotation = CGFloat(M_PI)
//        
//        UIView.animate(withDuration: 2.0, animations: {
//            self.redSquare.transform = CGAffineTransform(rotationAngle: fullRotation)
//        })
//        
//        UIView.transition(with: container, duration: 2.0, options: .transitionFlipFromTop, animations: {
//            self.redSquare.removeFromSuperview()
//            self.container.addSubview(self.blueSquare)
//        }, completion: nil)
//        
        
        
//        container.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        self.view.addSubview(container)
//        
//        redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        blueSquare.frame = redSquare.frame
//        
//        redSquare.backgroundColor = UIColor.yellow
//        blueSquare.backgroundColor = UIColor.green
//        
//        container.addSubview(redSquare)
        
        
        //MARK:- Gradient Layer
        //self.view.backgroundColor = UIColor.clear
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = self.view.bounds
//        let color1 = UIColor.yellow.cgColor as CGColor
//        let color2 = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0).cgColor as CGColor
//        let color3 = UIColor.clear.cgColor as CGColor
//        let color4 = UIColor(white: 0.0, alpha: 0.7).cgColor as CGColor
//        
        
        
//        let color1 = UIColor(white: 1.0, alpha: 0.2).cgColor
//        let color2 = UIColor(white: 1.0, alpha: 0.1).cgColor
//        let color3 = UIColor.clear.cgColor
//        let color4 = UIColor(white: 0.0, alpha: 0.05).cgColor
//        
//        
//        gradientLayer.colors = [color1, color2, color3, color4]
//        gradientLayer.locations = [0.0, 0.04, 0.95, 1.0]
//        view.layer.insertSublayer(gradientLayer, at: 0)
        //view.layer.addSublayer(gradientLayer)
        
        
        //MARK:- CAAffine Transform
//        UIView.animate(withDuration: 1, animations: {
//            self.subView.transform = CGAffineTransform(scaleX: 2, y: 2)
//        })
//        
//        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
//            self.subView.transform = CGAffineTransform.identity
//            
//        }, completion: nil)
        
//        UIView.animate(withDuration: 2, delay: 3, options: .curveEaseOut, animations: {
//            self.subView.transform = CGAffineTransform(translationX: 100, y: 100)
//            
//        }, completion: nil)
        
//        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseOut, animations: {
//            self.subView.transform = CGAffineTransform(rotationAngle: CGFloat.pi+CGFloat.pi/4)
//        }, completion: nil)
//        UIView.animate(withDuration: 3, delay: 1, usingSpringWithDamping: 1 , initialSpringVelocity: 1, options: .autoreverse, animations: {
//            self.subView.backgroundColor = UIColor.green
//        }, completion: nil)
//        
//        
        
        //MARK:- zooming the view
//        subView.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1)
//        UIView.animate(withDuration: 1, animations: {
//            self.subView.layer.transform = CATransform3DMakeScale(1.05, 1.05, 1)
//        },completion:{ finished in
//            UIView.animate(withDuration: 0.1, animations: {
//                self.subView.layer.transform = CATransform3DMakeScale(1, 1, 1)
//            })
//            
//        })
        
        
        //MARK:- Appearence of the view
//        UIView.animate(withDuration: 2, delay: 1, options: .curveEaseOut, animations: {
//            self.subView.alpha = 0
//        }, completion: {finished in
//        UIView.animate(withDuration: 2, delay: 2, options: .curveEaseOut, animations: {
//            self.subView.alpha = 1
//        }, completion: nil)
//        })
      
        
        
        //MARK:- Labels coming in
//        helloLabel.frame = CGRect(x: 0, y: 100, width: 100, height: 30)
//        userLabel.frame = CGRect(x: 0, y: 150, width: 100, height: 30)
//        loginButton.frame = CGRect(x: -100, y: 200, width: 100, height: 30)
//        
//        UIView.animate(withDuration: 2, delay: 1, options: .curveEaseIn, animations: {
//            self.helloLabel.frame = CGRect(x: 150, y: 100, width: 100, height: 30)
//        }, completion: nil)
//        
//        UIView.animate(withDuration: 1, delay: 1, options: .curveLinear, animations: {
//            self.userLabel.frame = CGRect(x: 150, y: 150, width: 100, height: 30)
//        }, completion: nil)
//        
        //MARK:- Moving Login button
//        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseOut, animations: {
//            self.loginButton.frame = CGRect(x: 150, y: 200, width: 100, height: 30)
//        }, completion: nil)
        
        
//        UIView.animate(withDuration: 2, delay: 3, usingSpringWithDamping: 0.1, initialSpringVelocity: 10, options: .curveLinear, animations: {
//            self.loginButton.frame = CGRect(x: 150, y: 200, width: 100, height: 30)
//        }, completion: nil)
    }
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let bounds = self.loginButton.bounds
        
        //Animate
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: UIViewAnimationOptions.curveLinear, animations: {
            
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
            //self.loginButton.isEnabled = false
            
        }, completion: { finished in self.loginButton.isEnabled = true })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

