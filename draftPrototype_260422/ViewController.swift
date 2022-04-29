//
//  ViewController.swift
//  draftPrototype_260422
//
//  Created by Adinda Rachmanto on 26/04/22.
//

import UIKit

      
class ViewController: UIViewController {
    
    @IBOutlet weak var pickHari: UITextField!
    @IBOutlet weak var pickWaktu: UITextField!
    
    //This is ramadhan day...
    let hari = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
    
    //I want to eat for..
    let waktu = ["Iftar","Sahur"]
    
    var hariPickerView = UIPickerView ()
    var waktuPickerView = UIPickerView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do any additional setup after loading the view.
        pickHari.inputView = hariPickerView
        pickWaktu.inputView = waktuPickerView
        
        //text field on
        pickHari.placeholder = "Select days"
        pickWaktu.placeholder = "Select time"
        
        //delegate & data sourcing
        hariPickerView.delegate = self
        hariPickerView.dataSource = self
        waktuPickerView.delegate = self
        waktuPickerView.dataSource = self
        
        //tagging
        hariPickerView.tag = 1
        waktuPickerView.tag = 2
            
    
    }
  
    @IBAction func startButton(_ sender: Any) {
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return hari.count
        case 2:
            return waktu.count
        default:
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return hari [row]
        case 2:
            return waktu [row]
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            pickHari.text = hari[row]
            pickHari.resignFirstResponder()
        case 2:
            pickWaktu.text = waktu[row]
            pickWaktu.resignFirstResponder()
        default:
            return
            
        }
    }
}

