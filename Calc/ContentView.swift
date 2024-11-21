//
//  ContentView.swift
//  Calc
//
//  Created by Ruzgar Ertuyun on 21.11.2024.
//

import SwiftUI

struct ContentView: View {
        @State var input1: String = ""
        @State var input2: String = ""
        @State var number1: Float = 0
        @State var number2: Float = 0
        @State var result: Float = 0

        var body: some View {
            VStack {
                Text("Calculator")
                    .font(.largeTitle)
                    .padding(.top, 50)
                
                Spacer()
                    .frame(height: 200)
                
                
                TextField("Enter 1st number", text: $input1)
                    .padding()
                    .keyboardType(.decimalPad)

                
                TextField("Enter 2nd number", text: $input2)
                    .padding()
                    .keyboardType(.decimalPad)

                HStack {
                    
                    Button("+") {
                        
                        number1 = Float(input1) ?? 0
                        number2 = Float(input2) ?? 0
                        result = number1 + number2
                    }
                    .frame(width: 40, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .padding()

                    
                    Button("-") {
                        number1 = Float(input1) ?? 0
                        number2 = Float(input2) ?? 0
                        result = number1 - number2
                    }
                    .frame(width: 40, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .padding()

                    
                    Button("x") {
                        number1 = Float(input1) ?? 0
                        number2 = Float(input2) ?? 0
                        result = number1 * number2
                    }
                    .frame(width: 40, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .padding()

                    
                    Button("/") {
                        number1 = Float(input1) ?? 0
                        number2 = Float(input2) ?? 0
                        // Check for division by zero
                        result = number2 != 0 ? number1 / number2 : 0
                    }
                    .frame(width: 40, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .padding()
                }

                
                Text("The result is \(result)")
                    .font(.headline)
            }
            .padding()
        }
    }

    #Preview {
        ContentView()
    }
