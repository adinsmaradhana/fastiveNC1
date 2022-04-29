//
//  SecondViewController.swift
//  draftPrototype_260422
//
//  Created by Adinda Rachmanto on 28/04/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .purple
    }
        else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .red
    }
        else if sender.selectedSegmentIndex == 2 {
            view.backgroundColor = .blue
    }
        else if sender.selectedSegmentIndex == 3 {
            view.backgroundColor = .green
        }
    }
}
