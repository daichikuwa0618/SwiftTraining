//
//  APIClientProtocol.swift
//  AlamoSB
//
//  Created by Daichi Hayashi on 2020/02/04.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import Foundation

typealias RemoteAPIResult = String

protocol APIClientType {

    func convert(
        _ japaneseString: String,
        completionHandler: @escaping (RemoteAPIResult) -> Void
    )
}
