//
//  DetailPage.swift
//  Films App (Draft Plan) MVVM
//
//  Created by Ahmet Erkut on 26.10.2023.
//

import UIKit
import Kingfisher

class DetailPage: UIViewController {

    @IBOutlet weak var filmLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!

    var film:Films?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        if let f = film {
            filmLabel.text = f.name
            if let url = URL(string: "http://kasimadalan.pe.hu/filmler_yeni/resimler/\(f.image!)"){
                DispatchQueue.main.async {
                    self.filmImageView.kf.setImage(with: url)
                }
            }
            priceLabel.text = "\(f.price!) $"
        }
    }

}
