//
//  chart.swift
//  
//
//  Created by Chicmic on 05/05/23.
//

import SwiftUI
import Charts

struct chart: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            
            NavigationView {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    ScrollView {
                        VStack {
                            VStack {
                                Chart {
                                    RuleMark(y: .value(Constants.Labels.goal, 20))
                                        .foregroundStyle(Color.red)
                                        .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                                        .annotation (alignment: .leading){
                                            Text(Constants.Labels.goalCapitalized)
                                                .font(.caption)
                                                .foregroundColor(.secondary)
                                        }
                                    
                                    ForEach(viewModel.dataEntries) { dataPoint in
                                        PointMark(x: .value(Constants.Labels.dateCapitalized, dataPoint.date),
                                                  y: .value(Constants.Labels.score, dataPoint.score))
                                        .foregroundStyle(Color.brown.gradient)
                                        .cornerRadius(5)
                                        LineMark(x: .value(Constants.Labels.dateCapitalized, dataPoint.date),
                                                 y: .value(Constants.Labels.score, dataPoint.score))
                                        .foregroundStyle(Color.brown.gradient)
                                        .cornerRadius(5)
                                    }
                                }
                                .frame(height: 180)
                                .chartYScale(domain: 0...70)
                                .chartXAxis(content: {
                                    AxisMarks(values: viewModel.dataEntries.map {$0.date}) { data in
                                        AxisGridLine()
                                            .foregroundStyle(Color.white)
                                        AxisTick()
                                        AxisValueLabel()
                                            .foregroundStyle(.white)
                                    }
                                })
                                .padding()
                                
        
                                HStack {
                                    Image(systemName: Constants.Icons.legendIcon)
                                        .rotationEffect(Angle(degrees: 45))
                                        .foregroundColor(.red)
                                        .font(.title)
                                    
                                    Text(Constants.Labels.goalCapitalized)
                                        .foregroundColor(.secondary)
                                    Spacer()
                                }
                                .font(.caption2)
                                .padding(.leading, 4)
                            }
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                            .cornerRadius(20)
                            .padding()
                            
                            VStack {
                                ForEach(viewModel.dataEntries.indices) {index in
                                    VStack {
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text(Constants.Labels.dateCapitalized)
                                                    .bold()
                                                    .font(.title3)
                                                Spacer()
                                                Text(viewModel.dataEntries[index].date)
                                            }
                                            Spacer()
                                            HStack {
                                                if index == 0 {
                                                    Image(systemName: Constants.Icons.upArrow)
                                                        .foregroundColor(Color.green)
                                                }
                                                else if viewModel.dataEntries[index].score >= viewModel.dataEntries[index - 1].score {
                                                    Image(systemName: Constants.Icons.upArrow)
                                                        .foregroundColor(Color.green)
                                                }
                                                else {
                                                    Image(systemName: Constants.Icons.downArrow)
                                                        .foregroundColor(Color.red)
                                                }
                                                VStack(alignment: .leading) {
                                                    Text(Constants.Labels.score)
                                                        .bold()
                                                        .font(.title3)
                                                    Spacer()
                                                    Text(String(format: Constants.StringFormats.threeDecimalPlaces, viewModel.dataEntries[index].score))
                                                }
                                                .frame(width: 100)
                                            }
                                        }
                                        Divider()
                                    }
                                }
                            }
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.1, green: 0.1, blue: 0.1))
                            .cornerRadius(20)
                            .padding()
                            
                            Spacer()
                        }
                    }
                    .navigationTitle(Constants.Labels.analysisLabel)
                }
            }
        }
    }
}

//struct chart_Previews: PreviewProvider {
//    static var previews: some View {
//        chart()
//    }
//}



