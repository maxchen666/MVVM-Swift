//
//  SampleDataViewModel.swift
//  MVVM
//
//  Created by ChenYong on 16/02/2015.
//  Copyright (c) 2015 iLula. All rights reserved.
//

import Foundation

class SampleDataViewModel
{
    
    var data:SampleDataModel
    
    init()
    {
        data = SampleDataModel()
    }
    
    func update(value: String)
    {
        data.Name = value
    }
}