//
//  HomeView.swift
//  WeSplit
//
//  Created by MD Tanvir Alam on 2/4/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var homeVM = HomeViewModel()
    var body: some View {
        NavigationView {
            Form(){
                Section{
                    TextField("Amount", text: $homeVM.amount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $homeVM.numberOfPeopleIndex) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    //Text("\(homeVM.numberOfPeople)")
                
                }
                Section(header:Text("How much tip do you wanna give?")){
                    Picker("Tip Percentage", selection:$homeVM.tipPercentageIndex){
                        ForEach(0..<homeVM.tipPercentages.count){
                            Text("\(self.homeVM.tipPercentages[$0]) %")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("Total per person: \(homeVM.totalPerPerson)")
                }
            }.navigationTitle("WeSplit")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
