//
//  FilmsDaoRepository.swift
//  Films App (Draft Plan) MVVM
//
//  Created by Ahmet Erkut on 26.10.2023.
//

import Foundation
import RxSwift

class FilmsDaoRepository {
    var filmsList = BehaviorSubject<[Films]>(value: [Films]())
    
    func filmsReload() {
        var list = [Films]()
        filmsList.onNext(list)
    }
}
