//
//  ViewController.swift
//  know it all avocado
//
//  Created by Alejandro Mendoza on 5/15/18.
//  Copyright © 2018 Alejandro Mendoza. All rights reserved.
//

import UIKit
import AlertOnboarding

let avocadoNames: [String] = ["The Mighty Avocado Says:", "The Know It All Avocado Says:", "Super Avocado Says:"]
let avocadoPhrases: [String] = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "You can count on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Absolutely", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful", "Chances aren't good", "No"]

class ViewController: UIViewController, AlertOnboardingDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func makeQuestion(_ sender: Any) {
        let phrase = avocadoPhrases[Int(arc4random_uniform(UInt32(avocadoPhrases.count)))]
        let name = avocadoNames[Int(arc4random_uniform(UInt32(avocadoNames.count)))]
        let alertView = AlertOnboarding(arrayOfImage: ["Octocat"], arrayOfTitle: [name], arrayOfDescription: [phrase])
        alertView.percentageRatioHeight = 1.0
        alertView.percentageRatioWidth = 1.0
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

