//
//  ViewController.swift
//  know it all avocado
//
//  Created by Alejandro Mendoza on 5/15/18.
//  Copyright © 2018 Alejandro Mendoza. All rights reserved.
//

import UIKit
import AlertOnboarding

class ViewController: UIViewController, AlertOnboardingDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func makeQuestion(_ sender: Any) {
        print("Make a question button pressed...")
        let alertView = AlertOnboarding(arrayOfImage: ["Octocat"], arrayOfTitle: ["OctoCat"], arrayOfDescription: ["Description"])
        alertView.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alertOnboardingSkipped(_ currentStep: Int, maxStep: Int) {
        
    }
    
    func alertOnboardingCompleted() {
        
    }
    
    func alertOnboardingNext(_ nextStep: Int) {
        
    }


}

