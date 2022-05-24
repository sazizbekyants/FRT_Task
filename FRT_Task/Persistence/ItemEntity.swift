//
//  TestItem.swift
//  Quinbay
//
//  Created by Sergo Azizbekyants on 19.05.22.
//

import Foundation
import CoreData

@objc(ItemEntity)
final class ItemEntity :NSManagedObject {
    @NSManaged var id: UUID?
    @NSManaged var title: String
}

extension ItemEntity {
    func convertToItem() -> ItemProduct {
        ItemProduct(id: id ?? UUID(), title: title)
    }
}
