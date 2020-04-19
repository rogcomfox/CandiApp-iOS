//
//  ViewController.swift
//  CandiAppIos
//
//  Created by Joe G on 19/04/20.
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var candiTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Candi App"
        candiTableView.dataSource = self
        candiTableView.delegate = self
        candiTableView.register(UINib(nibName: "CandiTableViewCell", bundle: nil), forCellReuseIdentifier: "CandiCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return candies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CandiCell", for: indexPath) as! CandiTableViewCell
        
        let candi = candies[indexPath.row]
        cell.titleCandi.text = candi.title
        cell.descCandi.text = candi.desc
        cell.photoCandi.image = candi.photo
        
        cell.photoCandi.layer.cornerRadius = cell.photoCandi.frame.height/2
        cell.photoCandi.clipsToBounds = true
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailCandiViewController(nibName: "DetailCandiViewController", bundle: nil)
        detail.candi = candies[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

