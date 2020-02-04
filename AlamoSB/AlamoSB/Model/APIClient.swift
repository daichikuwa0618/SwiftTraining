//
//  APIClient.swift
//  AlamoSB
//
//  Created by Daichi Hayashi on 2020/02/04.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import Foundation
import Alamofire

class APIClient: APIClientType {
    func convert(_ japaneseString: String, completionHandler: @escaping (RemoteAPIResult) -> Void) {
        let url = "https://labs.goo.ne.jp/api/hiragana"
        let parameters = ["app_id": "279f620fb4f3b2aa347fd421071581c3bc64b2838efda477756521b5acec801b", "sentence": japaneseString, "output_type": "hiragana"]
        
        Alamofire.request(url, method: .post, parameters: parameters).response { response in
            guard let data = response.data else {
                return
            }
            let decoder = JSONDecoder()
            do {
                let task: gooTask = try decoder.decode(gooTask.self, from: data)
                print(task.converted)
                completionHandler(task.converted)
            } catch {
                print(error)
            }
        }
    }
}
