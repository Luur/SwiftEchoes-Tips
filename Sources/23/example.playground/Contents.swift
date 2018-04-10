//: Playground - noun: a place where people can play

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var moc: NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.changeNotification(_:)), name: .NSManagedObjectContextObjectsDidChange, object: moc)
    }
    
    @objc func changeNotification(_ notification: Notification) {
        guard let userInfo = notification.userInfo else { return }
        
        if let inserts = userInfo[NSInsertedObjectsKey] as? Set<NSManagedObject>, inserts.count > 0 {
            print("--- INSERTS ---")
            print(inserts)
            print("+++++++++++++++")
        }
        
        if let updates = userInfo[NSUpdatedObjectsKey] as? Set<NSManagedObject>, updates.count > 0 {
            print("--- UPDATES ---")
            for update in updates {
                print(update.changedValues())
            }
            print("+++++++++++++++")
        }
        
        if let deletes = userInfo[NSDeletedObjectsKey] as? Set<NSManagedObject>, deletes.count > 0 {
            print("--- DELETES ---")
            print(deletes)
            print("+++++++++++++++")
        }
    }
}
