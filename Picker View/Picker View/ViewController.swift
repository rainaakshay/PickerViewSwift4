//
//  ViewController.swift
//  Picker View
//
//  Created by apple on 14/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    var pickerData = ["White","Red","Green","Blue","Yellow","Purple","Grey"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.white
        }
        if(row == 1)
        {
            self.view.backgroundColor = UIColor.red
        }
        if(row == 2)
        {
            self.view.backgroundColor = UIColor.green
        }
        if(row == 3)
        {
            self.view.backgroundColor = UIColor.blue
        }
        if(row == 4)
        {
            self.view.backgroundColor = UIColor.yellow
        }
        if(row == 5)
        {
            self.view.backgroundColor = UIColor.purple
        }
        if(row == 6)
        {
            self.view.backgroundColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 0.5)
        }
        
    }

    @IBOutlet weak var Colors: UIPickerView!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var time: UIDatePicker!
    @IBOutlet weak var Datelbl: UILabel!
    @IBOutlet weak var Timelbl: UILabel!
    
    let dateformat = DateFormatter()
    let timeformat = DateFormatter()
    
    @IBAction func datechanged(_ sender: Any) {
        set()
    }
    @IBAction func timechanged(_ sender: Any) {
        set()
    }
    
    func set()
    {
        dateformat.dateStyle=DateFormatter.Style.long
        timeformat.timeStyle=DateFormatter.Style.short
        Datelbl.text = dateformat.string(from: date.date)
        Timelbl.text = timeformat.string(from: time.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.Colors.dataSource=self
        self.Colors.delegate=self
        set()
    }


}

