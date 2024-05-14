//
//  UserDataManager.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI
import Firebase

class UserDataManager: ObservableObject {
    @Published var userData: [UserData] = []
    
    init() {
        fetchuserData()
    }
    func fetchuserData() {
        userData.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error?.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let userData = UserData(id: id)
                    self.userData.append(userData)
                }
            }
        }
    }
}
