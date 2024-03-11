//
//  MyProcols.swift
//  4month8lesson
//
//  Created by Apple on 11.3.2024.
//

import UIKit

protocol MyProcols {
    func changeScreens(vc: UIViewController)
}
extension MyProcols {
    func changeScreens(vc: UIViewController){
        if let navigationController = vc.navigationController {
            navigationController.pushViewController(vc, animated: true)
        } else {
            fatalError("The view controller must be embedded in a navigation controller.")
        }
    }
}

