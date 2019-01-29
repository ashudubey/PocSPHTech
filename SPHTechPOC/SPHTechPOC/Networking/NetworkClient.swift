//
//  NetworkClient.swift
//  SPHTechPOC
//
//  Created by Ashutosh Dubey on 28/01/19.
//  Copyright © 2019 SPHTech. All rights reserved.
//

import Foundation
import RxSwift

class NetworkClient {

    private let baseURL = URL(string: "https://data.gov.sg/api/")!

    func sendRequest<T: Codable>(request: NetworkRequest) -> Observable<T> {
        return Observable<T>.create { [unowned self] observer in
            let urlRequest = request.request(with: self.baseURL)
            let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                do {
                    let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
                    observer.onNext(model)
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()

            return Disposables.create {
                task.cancel()
            }
        }
    }
}

