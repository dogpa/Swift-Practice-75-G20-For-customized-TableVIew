//
//  G20WikiViewController.swift
//  Swift Practice # 74  G20 For customized TableVIew
//
//  Created by Dogpa's MBAir M1 on 2021/9/13.
//

import UIKit
import WebKit

class G20WikiViewController: UIViewController {
    
    
    var wikiWebUrl: String!
    
    @IBOutlet weak var countryWikiWebView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url: String = wikiWebUrl                                                        //指派url為第二頁取得資料的wikiWebUrl
        let encodedUrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) //指派encodedUrl為剛剛取得資料的url並重新編碼有中文的網址
        let encodedStringUrl: String = encodedUrl!                                          //轉型encodedUrl!
        
        
        
        //透過if let 檢查是否有取得網址
        if let webUrl = URL(string: encodedStringUrl){
            
            //指派webRequest取得URLRequest的功能
            let webRequest = URLRequest(url: webUrl)
            
            //showCountryWiKiWebView載入指定的網址
            countryWikiWebView.load(webRequest)
        }
        
        
    }
    


}
