//
//  HomeVIewModel.swift
//  WeSplit
//
//  Created by MD Tanvir Alam on 2/4/21.
//

import Foundation

class HomeViewModel:ObservableObject{
    @Published var amount = ""
    @Published var numberOfPeopleIndex = 2
    @Published var tipPercentageIndex = 2
    @Published var tipPercentages = [5,10,15,20,25]
    
    var totalPerPerson:String{
        let numberOfPeople = Double(numberOfPeopleIndex + 2)
        let tipPercentage = Double(tipPercentages[tipPercentageIndex])
        let totalAmount = Double(amount) ?? 0
        let totalCost = totalAmount + totalAmount * (tipPercentage/100)
        let finalResult = totalCost/numberOfPeople
        return String(format: "%.2f", finalResult)
    }
    var totalCost:String{
        let tipPercentage = Double(tipPercentages[tipPercentageIndex])
        let totalAmount = Double(amount) ?? 0
        let totalCost = totalAmount + totalAmount * (tipPercentage/100)
        return String(format: "%.2f", totalCost)
    }
}
