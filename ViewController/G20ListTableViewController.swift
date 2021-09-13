//
//  G20ListTableViewController.swift
//  Swift Practice # 74  G20 For customized TableVIew
//
//  Created by Dogpa's MBAir M1 on 2021/9/13.
//

import UIKit

class G20ListTableViewController: UITableViewController {

    //建立需要的資料Array，透過剛剛自定億的G20Country的struct來建立Array資料。
    var g20CountryArray:[G20Country] = [
        G20Country(countryImage: "1", countryName: "阿根廷", countryInfo: ["貿易額(百萬美)：142,370","GDP(百萬美)：951,001","人口：42,961,000","主要運動：足球"], countryLink: "https://zh.wikipedia.org/wiki/阿根廷"),
        G20Country(countryImage: "2", countryName: "澳洲", countryInfo: ["貿易額(百萬美)：496,700","GDP(百萬美)：1,099,771","人口：23,599,000","觀光景點：墨爾本、雪梨","國家特色：袋鼠多","經濟主力：礦業與第一農林漁牧業","首都：坎培拉"], countryLink: "https://zh.wikipedia.org/wiki/澳大利亚"),
        G20Country(countryImage: "3", countryName: "巴西", countryInfo: ["貿易額(百萬美)：484,600","GDP(百萬美)：3,275,799","人口：202,768,000"], countryLink: "https://zh.wikipedia.org/wiki/巴西"),
        G20Country(countryImage: "4", countryName: "加拿大", countryInfo: ["貿易額(百萬美)：947,200","GDP(百萬美)：1,595,975","人口：35,467,000","首都：渥太華","觀光資源：極光、冰川"], countryLink: "https://zh.wikipedia.org/wiki/加拿大"),
        G20Country(countryImage: "5", countryName: "中國", countryInfo: ["貿易額(百萬美)：4,620,000","GDP(百萬美)：27,331,116","人口：1,395,380,000"], countryLink: "https://zh.wikipedia.org/wiki/中国"),
        G20Country(countryImage: "6", countryName: "法國", countryInfo: ["貿易額(百萬美)：1,212,300","GDP(百萬美)：2,591,170","人口：63,951,000","首都：巴黎"], countryLink: "https://zh.wikipedia.org/wiki/法國"),
        G20Country(countryImage: "7", countryName: "德國", countryInfo: ["貿易額(百萬美)：2,866,600","GDP(百萬美)：3,748,094","人口：80,940,000"], countryLink: "https://zh.wikipedia.org/wiki/德国"),
        G20Country(countryImage: "8", countryName: "印度", countryInfo: ["貿易額(百萬美)：850,600","GDP(百萬美)：7,411,093","人口：1,259,695,000"], countryLink: "https://zh.wikipedia.org/wiki/印度"),
        G20Country(countryImage: "9", countryName: "印尼", countryInfo: ["貿易額(百萬美)：346,100","GDP(百萬美)：2,685,893","人口：251,490,000"], countryLink: "https://zh.wikipedia.org/wiki/印度尼西亚"),
        G20Country(countryImage: "10", countryName: "義大利", countryInfo: ["貿易額(百萬美)：948,600","GDP(百萬美)：2,135,359","人口：59,960,000"], countryLink: "https://zh.wikipedia.org/wiki/義大利"),
        G20Country(countryImage: "11", countryName: "日本", countryInfo: ["貿易額(百萬美)：1,522,400","GDP(百萬美)：5,749,550","人口：127,061,000","第一大城市：東京","國家特色：台日友好"], countryLink: "https://zh.wikipedia.org/wiki/日本"),
        G20Country(countryImage: "16", countryName: "韓國", countryInfo: ["貿易額(百萬美)：1,170,900","GDP(百萬美)：2,229,779","人口：50,437,000"], countryLink: "https://zh.wikipedia.org/wiki/大韩民国"),
        G20Country(countryImage: "12", countryName: "墨西哥", countryInfo: ["貿易額(百萬美)：813,500","GDP(百萬美)：2,148,884","人口：119,581,789"], countryLink: "https://zh.wikipedia.org/wiki/墨西哥"),
        G20Country(countryImage: "13", countryName: "俄羅斯", countryInfo: ["貿易額(百萬美)：844,200","GDP(百萬美)：3,937,759","人口：146,300,000"], countryLink: "https://zh.wikipedia.org/wiki/俄罗斯"),
        G20Country(countryImage: "14", countryName: "沙烏地阿拉伯", countryInfo: ["貿易額(百萬美)：521,600","GDP(百萬美)：1,609,628","人口：30,624,000"], countryLink: "https://zh.wikipedia.org/wiki/沙特阿拉伯"),
        G20Country(countryImage: "15", countryName: "南非", countryInfo: ["貿易額(百萬美)：200,100","GDP(百萬美)：707,097","人口：53,699,000"], countryLink: "https://zh.wikipedia.org/wiki/南非"),
        G20Country(countryImage: "17", countryName: "土耳其", countryInfo: ["貿易額(百萬美)：417,000","GDP(百萬美)：1,514,859","人口：77,324,000"], countryLink: "https://zh.wikipedia.org/wiki/土耳其"),
        G20Country(countryImage: "18", countryName: "英國", countryInfo: ["貿易額(百萬美)：1,189,400","GDP(百萬美)：3,128,185","人口：64,511,000"], countryLink: "https://zh.wikipedia.org/wiki/英国"),
        G20Country(countryImage: "19", countryName: "美國", countryInfo: ["貿易額(百萬美)：3,944,000","GDP(百萬美)：21,334,667","人口：318,523,000"], countryLink: "https://zh.wikipedia.org/wiki/美國"),
        G20Country(countryImage: "20", countryName: "歐盟", countryInfo: ["貿易額(百萬美)：4,485,000","GDP(百萬美)：18,640,411","人口：505,570,700"], countryLink: "https://zh.wikipedia.org/wiki/欧洲联盟")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    //回傳Sections的數量
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //回傳需要的顯示行數
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return g20CountryArray.count    //20
    }

    //顯示的資料內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //指派cell取得tableView的重用機制功能，發生的地方位於"cell（"cellForG20"這個裡面）"的indexPath上
        //透過 if let 嘗試取得CustomizedTableViewCell，若是可以透過轉型取得CustomizedTableViewCell
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellForG20", for: indexPath) as? CustomizedTableViewCell {
            
            //已經指派取得CustomizedTableViewCell資料的cell
            //就指派countryNameLabel與countryFlagImageView這兩個元件的顯示內容。
            cell.countryNameLabel.text = g20CountryArray[indexPath.row].countryName
            cell.countryFlagImageView.image = UIImage(named: g20CountryArray[indexPath.row].countryImage)
            return cell
            
        }else{  //若是沒有取得CustomizedTableViewCell 就用預設方法顯示照片與Label的內容。
            let cell = UITableViewCell ()
            cell.textLabel?.text = g20CountryArray[indexPath.row].countryName
            cell.imageView?.image = UIImage(named: g20CountryArray[indexPath.row].countryImage)
            //回傳cell
            return cell
        }
        
        
        
        //cell的標題從g20CountryArray[indexPath.row].countryName取得
        //cell.textLabel?.text = g20CountryArray[indexPath.row].countryName
        
        //cell的照片的名稱從g20CountryArray[indexPath.row].countryImage
        //cell.imageView?.image = UIImage(named: g20CountryArray[indexPath.row].countryImage)
        
        
    }
    
    //設定Section的標題
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "G20 Country"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showCountryInformation", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCountryInformation" {
            
            if let vCForCountryInfo = segue.destination as? G20InfoViewController {
                
                let selectIndexPath = self.tableView.indexPathForSelectedRow
                
                if let selectRowNumbers = selectIndexPath?.row {
                    
                    vCForCountryInfo.numbersOfRowCountry = selectRowNumbers
                    vCForCountryInfo.countryArrayForG20 = g20CountryArray
                }
            }
        }
    }
    
    

}
