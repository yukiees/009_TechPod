//
//  ViewController.swift
//  009_TechPod
//
//  Created by 松島優希 on 2020/11/19.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    //Storyboardで扱うTableViewの宣言
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int{
        return 10
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と記述
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }


}

