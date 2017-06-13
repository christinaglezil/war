//
//  ViewController.swift
//  war
//
//  Created by Christina Glezil on 6/4/17.
//  Copyright © 2017 Christina Glezil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightimageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    
    @IBOutlet weak var leftimageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["card2","card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        //randomize left number from 2 to 10
        //let is a constant (you can't assign anything after
        let leftNumber = Int(arc4random_uniform(13))
        
        //set the left image
        leftimageView.image = UIImage(named: cardNames[leftNumber])
        
        //randomize right number from 2 to 10
        let rightNumber = Int(arc4random_uniform(13))
        
        //set the right image
        rightimageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber{
            //left card wins
            
            //increment
            leftScore += 1
            //update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber{
            //it's a tie
        }
        else{
            //right card wins
            
            //increment score
            rightScore += 1
            
            //update label
            rightScoreLabel.text = String(rightScore)

        }
    }

}

