//
//  ViewController.swift
//  SPHTechPOC
//
//  Created by Ashutosh Dubey on 28/01/19.
//  Copyright © 2019 SPHTech. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

/*

 Wrong Commit
 */

class ViewController: UIViewController {

    var  dtat: Observable<Response>? = nil
    let client = NetworkClient()

    override func viewDidLoad() {
        super.viewDidLoad()

//            MobileDataRequest(resource_id: "a807b7ab-6cad-4aa6-87d0-e283a7353a0f")
//            .flatMap { request -> Observable<[MobileDataModel]> in
//                return self.apiClient.send(apiRequest: request)
//        }

        // Do any additional setup after loading the view, typically from a nib.
        dtat =  client.sendRequest(request: MobileDataRequest(resource_id: "a807b7ab-6cad-4aa6-87d0-e283a7353a0f"))

        dtat?.subscribe(onNext: {element in
            print(element)

        })

        print(dtat)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

