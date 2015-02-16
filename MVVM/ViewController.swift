//
//  ViewController.swift
//  MVVM
//
//  Created by ChenYong on 16/02/2015.
//  Copyright (c) 2015 iLula. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SampleModelPropertyChangedDelegate, UITextFieldDelegate {
    @IBOutlet var value1: UITextField?
    @IBOutlet var value2: UITextField?
    
    var viewmodel:SampleDataViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewmodel = SampleDataViewModel()
        
        value1?.delegate = self
        value2?.delegate = self
        viewmodel?.data.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func PropertyChanged(name: String) {
        if(value1?.text != viewmodel?.data.name)
        {
            value1?.text = viewmodel?.data.name
        }
        if(value2?.text != viewmodel?.data.name)
        {
            value2?.text = viewmodel?.data.name
        }
    }
    
    func textFieldDidEndEditing(textView: UITextView!) {
        viewmodel?.update(textView.text)
    }
}

