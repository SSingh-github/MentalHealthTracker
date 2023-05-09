//
//  CoreDataManager.swift
//  
//
//  Created by Chicmic on 08/05/23.
//

import Foundation
import CoreData

class CoreDataManager {
    static let instance = CoreDataManager()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: Constants.Labels.dataModelName)
        container.loadPersistentStores {(description, error) in
            if let error = error {
                print("Error loading core data. \(error)")
            }
            else {
                print("successfully loaded core data.")
            }
        }
        context = container.viewContext
    }
    
    func save() {
        do {
            try context.save()
            print("saved successfully")
        } catch let error {
            print("Error saving core data. \(error.localizedDescription)")
        }
    }
}
