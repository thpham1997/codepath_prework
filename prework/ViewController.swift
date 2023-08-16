//
//  ViewController.swift
//  prework
//
//  Created by Thanh Pham on 8/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var majorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        
        let nameColor = changeColor()
        let schoolColor = changeColor()
        let majorColor = changeColor()
        
        nameLabel.textColor = nameColor
        schoolLabel.textColor = schoolColor
        majorLabel.textColor = majorColor
        
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
}

