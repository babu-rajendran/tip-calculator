//
//  SettingsViewController.swift
//  tippy
//
//  Created by Babu Rajendran on 9/17/20.
//  Copyright © 2020 babu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        
        // Get an Integer value.
        let intValue = defaults.integer(forKey: "defaultTipIndex")
        
        defaultTipControl.selectedSegmentIndex = intValue
    }
    
    @IBAction func setDefaultTipAmount(_ sender: Any) {
        //Access UserDefaults
        let defaults = UserDefaults.standard
        
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipIndex")
        
        // Force UserDefaults to save.
        defaults.synchronize()
        
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
