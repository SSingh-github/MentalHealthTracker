//
//  slider.swift
//  
//
//  Created by Chicmic on 04/05/23.
//

import SwiftUI

struct slider: View {
    @ObservedObject var viewModel: ViewModel
    @State var isActive: Bool = false
    @State var showingAlert:Bool = false
    @State var showSheet = false
    
    var body: some View {
            NavigationView {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    ScrollView {
                        ForEach(viewModel.sliderValues.indices, id:\.self) {index in
                            VStack {
                                HStack {
                                    Text(Constants.Questions.question[index])
                                        .bold()
                                        .font(.title2)
                                        .fontDesign(.rounded)
                                    Spacer()
                                    Button {
                                        showSheet.toggle()
                                    } label: {
                                        Image(systemName: Constants.Icons.helpIcon)
                                            .foregroundColor(.white)
                                            .font(.title3)
                                    }
                                    .sheet(isPresented: $showSheet, content: {HelpView()})
                                }
                                Text(String(format: Constants.StringFormats.oneDecimalPlace, viewModel.sliderValues[index]))
                                    .font(.title3)
                                    .padding()
                                Slider(value: $viewModel.sliderValues[index],
                                       in: 0...100,
                                       step: 10.0)
                                .accentColor(Color.blue)

                            }
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                            .cornerRadius(20)
                            .padding()
                        }
                        
                        Button(Constants.Labels.submitTest) {
                            
                            showingAlert.toggle()
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(Constants.Labels.alertTitle),
                                  message: Text(Constants.Labels.alertMessage),
                                  primaryButton: .default(Text(Constants.Labels.primartButtonLabel)) {
                                viewModel.calculateScore()
                                isActive.toggle()
                            },
                                  secondaryButton: .cancel(Text(Constants.Labels.secondaryButtonLable)) {
                            })
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                        .cornerRadius(20)
                        .padding()
                        
                        NavigationLink("", isActive: $isActive) {
                            ScoreView(score: $viewModel.currentScore)
                        }
                    }
                    .navigationTitle(Constants.Labels.testLabel)
                }
            }
            .accentColor(Color.white)
    }
}

//struct slider_Previews: PreviewProvider {
//    static var previews: some View {
//        slider()
//    }
//}
