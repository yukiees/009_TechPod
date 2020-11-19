//
//  ViewController.swift
//  009_TechPod
//
//  Created by 松島優希 on 2020/11/19.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    //Storyboardで扱うTableViewの宣言
    @IBOutlet weak var table: UITableView!
    
    //曲名を入れるための配列
    var songNameArray = [String]()
    
    //曲のファイルの格納
    var fileNameArray = [String]()
    
    //音楽家の画像格納
    var imageNameArray = [String]()
    
    //音楽を再生するための変数
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        songNameArray = ["カノン","エリーゼのために","G線上のアリア"]
        fileNameArray = ["cannon","elise","aria"]
        imageNameArray = ["Pachelbel.jpg","Beethoven.jpg","Bach.jpg"]
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->Int{
        //セルの数を配列の数にする
        return songNameArray.count
    }
    
    //ID付きのセルを取得して、セル付属のtextLabelに記述
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルに曲のタイトルを代入
        cell?.textLabel?.text = songNameArray[indexPath.row]
        
        //セルに音楽家の写真を表示
        cell?.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        return cell!
    }
    
    //セルが押されたときのメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(songNameArray[indexPath.row])が選択されました。")
        
        //音楽ファイルの設定
        let AudioPath = URL(fileURLWithPath: Bundle.main.path(forResource: fileNameArray[indexPath.row], ofType: "mp3")!)
        
        audioPlayer = try? AVAudioPlayer(contentsOf: AudioPath)
        
        audioPlayer.play()
        
    }


}

