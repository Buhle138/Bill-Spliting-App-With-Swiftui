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
    @State private var tipPerentage = 20 //keeps track of the current tip that is chosen
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentage = [10, 15, 20, 25, 0] //stores the tip percentages to choose from.
    var totalPerPerson: Double{
        //calculate total per person here
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPerentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal =  checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    //when looping through an  array using a for each you must always use a  unique identifier (id)
    
    var body: some View {
        //code simply means if we can't get their local currency then we will use the USD as the currency.
        NavigationView{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
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
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
            }
            .navigationTitle("weSplit")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
        }
        
    }
}

struct ChequeSplitApp_Previews: PreviewProvider {
    static var previews: some View {
        ChequeSplitApp()
    }
}
