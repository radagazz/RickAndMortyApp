//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by anurak teerarattananukulchai on 16/5/2564 BE.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
    
    
    var characterList : [CharacterData] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCharatorInfo()
    }
    
    //MARK: - Functions
    func getCharatorInfo(){
        
        Alamofire.request("https://rickandmortyapi.com/api/character/").responseJSON {
            reponse in
            if reponse.result.isSuccess == true {
                let responseJSON = JSON(reponse.result.value!)
                print(responseJSON)
                // try Jsondecoder or Swifty Json here
                
            }
            else {
                print("there is error getting Character from Server")
            }
        }
        
    }
    
    
    

    
    //MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}

