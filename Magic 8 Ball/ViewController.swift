//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonathan Burnett on 01/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateImage()
    }
    
    func updateImage () {
        
        randomBallNumber = Int(arc4random_uniform(5)+1)
        
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
    
}

