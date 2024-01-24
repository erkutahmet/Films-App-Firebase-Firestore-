//
//  FilmsDaoRepository.swift
//  Films App (Draft Plan) MVVM
//
//  Created by Ahmet Erkut on 26.10.2023.
//

import Foundation
import RxSwift
import FirebaseFirestore

class FilmsDaoRepository {
    var filmsList = BehaviorSubject<[Films]>(value: [Films]())
    var collectionFilms = Firestore.firestore().collection("Films")

    func filmsReload() {
        collectionFilms.getDocuments() { snapshot, error in
            var list = [Films]()
            
            if let documents = snapshot?.documents{
                for document in documents {
                    let data = document.data()
                    let id = document.documentID
                    let name = data["name"] as? String ?? ""
                    let image = data["image"] as? String ?? ""
                    let price = data["price"] as? Int ?? 0
                    
                    let film = Films(id: id, name: name, image: image, price: price)
                    list.append(film)
                }
            }

            self.filmsList.onNext(list)
        }
    }
}
