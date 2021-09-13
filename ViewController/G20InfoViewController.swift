//
//  G20InfoViewController.swift
//  Swift Practice # 74  G20 For customized TableVIew
//
//  Created by Dogpa's MBAir M1 on 2021/9/13.
//

import UIKit

class G20InfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var countryInfoNameLabel: UILabel!
    
    
    @IBOutlet weak var countryInfoFlagImageView: UIImageView!
    
    @IBOutlet weak var countryInfoDetailsTableView: UITableView!
    
    @IBOutlet weak var countryInfoWIkiButton: UIButton!
    
    var numbersOfRowCountry: Int!
    var countryArrayForG20: [G20Country]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(numbersOfRowCountry!)
       
        countryInfoNameLabel.text = "\(countryArrayForG20![numbersOfRowCountry!].countryName)"
        
        countryInfoFlagImageView.image = UIImage(named: "\(countryArrayForG20![numbersOfRowCountry!].countryImage)")
    
        countryInfoWIkiButton.setTitle("\(countryArrayForG20![numbersOfRowCountry!].countryName) 維基百科", for: .normal)
        
        countryInfoDetailsTableView.delegate = self
        countryInfoDetailsTableView.dataSource = self
    }
    
    
    
    
    @IBSegueAction func showWikiWeb(_ coder: NSCoder) -> G20WikiViewController? {
        let controller = G20WikiViewController(coder: coder)
        controller?.wikiWebUrl = countryArrayForG20![numbersOfRowCountry!].countryLink
        return controller
    }
    
    
    //回傳區域數
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //回傳需要多少的row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArrayForG20![numbersOfRowCountry!].countryInfo.count
    }
    //顯示的內容為何
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = countryArrayForG20![numbersOfRowCountry!].countryInfo[indexPath.row]
            return cell
        }
        

    


}
