//
//  ResultsVC.swift
//  BMI Calculator
//
//  Created by Mohammed Alasad on 11/21/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmiValue: String?
    
    
    bmiLabel.text = bmiValue
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
