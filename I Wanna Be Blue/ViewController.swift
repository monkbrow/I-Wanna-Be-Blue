//
//  ViewController.swift
//  I Wanna Be Blue
//
//  Created by admin on 7/5/21.
//

import UIKit


class ViewController: UIViewController {

    var whiteOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var colorLabel: UILabel!
   
    @IBOutlet var blueLabel: UIButton!
    
    @IBAction func blueBottonPressed(_ sender: Any) {
    
        whiteOn = !whiteOn
        
        updateUI()
    }
    
    
    func updateUI() {
        if whiteOn {
            view.backgroundColor = .white
            blueLabel.setTitle("I wanna be blue", for: .normal)
            colorLabel.text = "What color am I?"
            colorLabel.textColor = .black
        } else {
            view.backgroundColor = .blue
            blueLabel.setTitle("I'M BLUE!", for:
                                .normal)
            colorLabel.text = "It's not easy being green"
            colorLabel.textColor = .green
        }
    }

}
