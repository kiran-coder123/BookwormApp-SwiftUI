//
//  DataController.swift
//  Bookworm
//
//  Created by Kiran Sonne on 25/11/22.
//

import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BookWorm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
