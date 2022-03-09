//
//  ListViewController.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 9.03.22.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


// MARK: - SwiftUI
import SwiftUI

struct ListVcProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
  
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ListViewController()
        
        func makeUIViewController(context: Context) ->  ListViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


