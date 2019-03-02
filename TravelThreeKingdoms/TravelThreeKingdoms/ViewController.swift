//
//  ViewController.swift
//  TravelThreeKingdoms
//
//  Created by Yiyang Zhu on 3/2/19.
//  Copyright © 2019 yiyangzhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["青龙偃月刀","流星锤","小刀"]
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addWeapon(_ sender: Any) {
        if(input.text != ""){
            list.append(input.text!)
            input.text = ""
        }
        weaponTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:UITableViewCell.CellStyle.default, reuseIdentifier:"cell")
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCell.EditingStyle.delete{
            list.remove(at: indexPath.row)
            weaponTableView.reloadData()
        }
    }

    @IBOutlet weak var weaponTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

