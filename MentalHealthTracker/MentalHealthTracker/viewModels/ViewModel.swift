//
//  viewModel.swift
//  
//
//  Created by Chicmic on 08/05/23.
//

import Foundation
import CoreData

class ViewModel: ObservableObject {
    let manager = CoreDataManager.instance
    
    @Published var xAxisLabels:[String] = []
    
    @Published var sliderValues: [Double] = [0, 0, 0 , 0, 0, 0, 0, 0]
    
    @Published var currentScore: Double = 0.0
    
    var data: [ScoreEntry] = []
    @Published var dataEntries: [DataEntry] = []
    
    init () {
        
        getDataEntriesFromTheDatabase()
        loadTheDataEntriesArray()
        
    }
    
    func getDataEntriesFromTheDatabase() {
        let request = NSFetchRequest<ScoreEntry>(entityName: Constants.Labels.scoreEntry)
        let sortDescriptor = NSSortDescriptor(key: Constants.Labels.date, ascending: true)
        request.sortDescriptors = [sortDescriptor]
        
        do {
            let fetchedData = try manager.context.fetch(request)
            data = fetchedData
            print(data)
        } catch let error {
            print("error fetching. \(error.localizedDescription)")
        }
    }
    
    func loadXAxisLabels() {
        for index in dataEntries.indices {
            xAxisLabels.append(dataEntries[dataEntries.count - 1 - index].date)
        }
    }
    
    func addEntryToTheDatabase(score: Double) {
        let newScore = score
        let date = Date()
        let newEntity = ScoreEntry(context: manager.context)
        newEntity.score = newScore
        newEntity.date = date
        manager.save()
        refreshData()
    }
    
    func refreshData() {
        getDataEntriesFromTheDatabase()
        loadTheDataEntriesArray()
        loadXAxisLabels()
    }
    
    func loadTheDataEntriesArray() {
        var entries: [DataEntry] = []
        for entry in data {
            entries.append(.init(date: (entry.date?.formattedDateString())!, score: entry.score))
        }
        dataEntries = entries
        print(dataEntries)
    }
    
    func calculateScore() {
        let score = 0.4542 + sliderValues[0] * 4.678e-05 + sliderValues[1] * (-8.179e-05) +
        sliderValues[2] * 0.0006 + sliderValues[3] * 0.0011 + sliderValues[4] * (-0.0005) +
        sliderValues[5] * 0.0003 + sliderValues[6] * (-2.791e-05) + sliderValues[7] * 0.0003
        currentScore = score * 100
        addEntryToTheDatabase(score: currentScore)
    }
}
