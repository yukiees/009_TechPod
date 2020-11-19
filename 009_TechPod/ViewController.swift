//
//  ViewController.swift
//  009_TechPod
//
//  Created by 松島優希 on 2020/11/19.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    //Storyboardで扱うTableViewの宣言
    @IBOutlet weak var table: UITableView!
    
    //曲名を入れるための配列
    var songNameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        songNameArray = ["カノン","エリーゼのために","G線上のアリア"]
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int{
        //セルの数を配列の数にする
        return songNameArray.count
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と記述
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルに曲のタイトルを代入
        cell?.textLabel?.text = songNameArray[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(songNameArray[indexPath.row])が選択されました。")
    }


}

