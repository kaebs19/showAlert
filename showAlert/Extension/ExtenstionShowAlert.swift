//
//  ExtenstionShowAlert.swift
//  showAlert
//
//  Created by mjeed on 01/08/2023.
//

import UIKit

extension UIViewController {
    
    func showAlertWithMessage(title:String , message: String , comletion: @escaping ()->Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .cancel) { hendler in
        }
        alert.addAction(ok)
        DispatchQueue.main.async {
            self.present(alert, animated: true)
            
        }
    }
    
    
    func showAlerTowAction(title:String , message: String , comletion: @escaping ()->Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let ok = UIAlertAction(title: "ok", style: .default) { hendler in
            // accessed
        }
        alert.addAction(ok)
        alert.addAction(cancel)
        DispatchQueue.main.async {
            self.present(alert, animated: true)
            
        }
    }

    func showAlertWithHandler(title:String , message: String , okTitle:String = "Ok" , okHandler: ((UIAlertAction)->Void)? = nil )  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: okTitle, style: .cancel , handler: okHandler)
        alert.addAction(ok)
        
        DispatchQueue.main.async {
            self.present(alert, animated: true)
        }
    }
    
}
