//
//  ContentView.swift
//  FirstAlamofire
//
//  Created by Daichi Hayashi on 2020/02/03.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import SwiftUI
import Alamofire
import Foundation

struct UserModel: Codable {
    let id: Int
    let userName: String
    let imageUrl: String
}

func getArticles() {
    Alamofire.request("https://todo-practice-app.herokuapp.com/easy/first").response { response in
        guard let data = response.data else {
            return
        }
        let decoder = JSONDecoder()
        do {
            let tasks: [Task] = try decoder.decode([Task].self, from: data)
            print(tasks)
        } catch {
            print(error)
        }
    }
}


struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
