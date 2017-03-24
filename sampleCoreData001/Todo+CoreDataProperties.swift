//
//  Todo+CoreDataProperties.swift
//  sampleCoreData001
//
//  Created by satoshiii on 2016/05/17.
//  Copyright © 2016年 satoshiii. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Todo {

    @NSManaged var saveDate: NSDate?
    @NSManaged var title: String?

}
