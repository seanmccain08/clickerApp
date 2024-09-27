//
//  shopViewController.swift
//  clickerApp
//
//  Created by SEAN MCCAIN on 9/25/24.
//

import UIKit

class shopViewController: UIViewController {

    let alert = UIAlertController(title: "Insufficient Points", message: "You do not have enough points to purchase this.", preferredStyle: .alert)
    
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var basePriceLabel: UILabel!
    @IBOutlet weak var baseOwnedLabel: UILabel!
    @IBOutlet weak var multiplierPriceLabel: UILabel!
    @IBOutlet weak var multiplierOwnedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(button)
        pointsLabel.text = "\(AppData.points) Points"
        basePriceLabel.text = "Price: \(AppData.basePrice)"
        baseOwnedLabel.text = "Current: \(AppData.base)"
        multiplierPriceLabel.text = "Price: \(AppData.multiplierPrice)"
        multiplierOwnedLabel.text = "Current: x\(AppData.multiplier)"
        
    }
    
    @IBAction func baseUpgrade(_ sender: UIButton) {
        
        if(AppData.points >= AppData.basePrice){
            
            AppData.points -= AppData.basePrice
            AppData.base += 1
            AppData.basePrice*=2
            basePriceLabel.text = "Price: \(AppData.basePrice)"
            baseOwnedLabel.text = "Current: \(AppData.base)"
            pointsLabel.text = "Points: \(AppData.points)"
            
        }
        else{
            
            self.present(alert, animated: true)
            
        }
        
    }
    
    @IBAction func multiplierUpgrade(_ sender: UIButton) {
        
        if(AppData.points >= AppData.multiplierPrice){
            
            AppData.points -= AppData.multiplierPrice
            AppData.multiplier += 1
            AppData.multiplierPrice*=2
            multiplierPriceLabel.text = "Price: \(AppData.multiplierPrice)"
            multiplierOwnedLabel.text = "Current: x\(AppData.multiplier)"
            pointsLabel.text = "Points: \(AppData.points)"
            
        }
        else{
            
            self.present(alert, animated: true)
            
        }
        
    }

}
