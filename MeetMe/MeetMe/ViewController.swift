//
//  ViewController.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }


}




import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
  
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ViewController()
        
//        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) ->  ViewController {
//            return viewController
//        }
        
        func makeUIViewController(context: Context) ->  ViewController {
            return viewController
        }
        
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
