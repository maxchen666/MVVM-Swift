//
//  AirModel.swift
//  MVVM
//
//  Created by ChenYong on 16/02/2015.
//  Copyright (c) 2015 iLula. All rights reserved.
//

import Foundation

protocol SampleModelPropertyChangedDelegate
{
    func PropertyChanged(name: String)
}

class SampleDataModel
{
    var delegate:SampleModelPropertyChangedDelegate?
    
    var name:String
    
    var Name:String
    {
        get
        {
            return self.name
        }
        set
        {
            if(self.name != newValue)
            {
                self.name = newValue
                OnPropertyChanged("this value changed")
            }
        }
    }
    
    init()
    {
        self.name = ""
    }
    
    func OnPropertyChanged(msg: String)
    {
        delegate?.PropertyChanged(msg)
    }
}