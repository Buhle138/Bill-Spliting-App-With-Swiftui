//
//  ChequeSplitApp.swift
//  SwiftUiBasics
//
//  Created by Buhle Radzilani on 2024/05/22.
//



import SwiftUI

struct ChequeSplitApp: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPerentage = 20
    
    
    let tipPercentage = [10, 15, 20, 25, 0]
    
    //when looping through an  array using a for each you must always use a  unique identifier (id)
    
    var body: some View {
        //code simply means if we can't get their local currency then we will use the USD as the currency.
        NavigationView{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100){
                           Text("\($0) people")
                        }
                    }
                }
                
            //Note inside a picker selection is the selected value at a given moment and it can change from time to time so we add the state variable.
            
                Section{
                   
                    Picker("Tip percentage", selection: $tipPerentage){
                        ForEach(tipPercentage, id: \.self){
                            Text($0, format: .percent)
                        }
                    }
                    //styling the picker Horizontally.
                    .pickerStyle(.segmented)
                }header: {
                    Text("How much tip do you want to leave?")
                }
                
                
                Section{
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }
            .navigationTitle("weSplit")
        }
        
    }
}

struct ChequeSplitApp_Previews: PreviewProvider {
    static var previews: some View {
        ChequeSplitApp()
    }
}
