//
//  DetailCandiViewController.swift
//  CandiAppIos
//
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import UIKit

class DetailCandiViewController: UIViewController {

    @IBOutlet weak var candiTitle: UILabel!
    @IBOutlet weak var candiPhoto: UIImageView!
    @IBOutlet weak var candiDesc: UILabel!
    
    var candi: Candi?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = candi {
            candiPhoto.image = result.photo
            candiTitle.text = result.title
            candiDesc.text = result.desc
        }
    }

}
