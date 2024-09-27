//
//  ViewController.swift
//  clickerApp
//
//  Created by SEAN MCCAIN on 9/25/24.
//

import UIKit

class AppData {
    
    static var points = 0
    static var base = 1
    static var multiplier = 1
    static var basePrice = 20
    static var multiplierPrice = 50
    
}

class ViewController: UIViewController {

    @IBOutlet weak var tapAnywhereLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        pointsLabel.text = "\(AppData.points) Points"
        
    }

    @IBAction func tapScreen(_ sender: Any) {
        
        AppData.points+=(AppData.base*AppData.multiplier)
        pointsLabel.text = "\(AppData.points) Points"
        
        if tapAnywhereLabel.isHidden == false{
            
            tapAnywhereLabel.isHidden = true
            
        }
        
    }
    
    @IBAction func shopButton(_ sender: Any) {
        
        performSegue(withIdentifier: "shopSegue", sender: self)
        
    }
    
}

