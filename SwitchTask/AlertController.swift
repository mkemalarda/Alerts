//
//  ViewController.swift
//  SwitchTask
//
//  Created by Mustafa Kemal ARDA on 6.02.2024.
//
//
import UIKit
import SnapKit

class AlertController: UIViewController {
    
    private let button: UIButton = {
       let button = UIButton()
        button.setTitle("Alert1", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.isEnabled = true
        button.addTarget(self, action: #selector(buttonAlert), for: .touchUpInside)
        return button
    }()
    
    private let button2: UIButton = {
       let button = UIButton()
        button.setTitle("Alert2", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.isEnabled = true
        button.addTarget(self, action: #selector(buttonAlert2), for: .touchUpInside)
        return button
    }()
    
    private let button3: UIButton = {
       let button = UIButton()
        button.setTitle("Alert3", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.isEnabled = true
        button.addTarget(self, action: #selector(buttonAlert3), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(20)
            make.width.equalTo(100)
        }
        view.addSubview(button2)
        button2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(60)
            make.height.equalTo(20)
            make.width.equalTo(100)
        }
        
        view.addSubview(button3)
        button3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(button2.snp.bottom).offset(60)
            make.height.equalTo(20)
            make.width.equalTo(100)
        }
        
    }
    //MARK: - ALERT1
    @objc func buttonAlert(){
        let alertController = UIAlertController(title: "Error!", message: "erorrrr", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel")
        }
        alertController.addAction(cancelAction)
        
        let okeyAction = UIAlertAction(title: "OK", style: .destructive) { action in
            print("OK")
        }
        alertController.addAction(okeyAction)
        
        self.present(alertController, animated: true)
    }
    
    //MARK: - ALERT2
    
    @objc func buttonAlert2(){
        let alertController = UIAlertController(title: "Title", message: "subtitle", preferredStyle: .alert)
        
        
        alertController.addTextField { textfield1 in
            textfield1.placeholder = "Enter username"
            textfield1.keyboardType = .twitter
            textfield1.isSecureTextEntry = false
            
            
            alertController.addTextField { textfield2 in
                textfield2.placeholder = "Enter code"
                textfield2.keyboardType = .numberPad
                textfield2.isSecureTextEntry = true
                
            }
            
            let saveAction = UIAlertAction(title: "Save", style: .cancel) { action in
                let alert1 = alertController.textFields![0] as UITextField
                let alert2 = alertController.textFields![1] as UITextField
                
                if let getInformation1 = alert1.text , let getInformation2 = alert2.text {
                    print("Info: \(getInformation1) - \(getInformation2)")
                }
            }
            
            alertController.addAction(saveAction)
            self.present(alertController,animated: true)
            
        }
        
       
        
    }
    
    
    //MARK: - ALERT3
    
    @objc func buttonAlert3(){
        
        let image = UIImage(named: "profile")
        let imagesToShare = [image]
        let shareSheet = UIActivityViewController(activityItems: imagesToShare, applicationActivities: nil)
        shareSheet.popoverPresentationController?.sourceView = self.view
        shareSheet.excludedActivityTypes = [.postToVimeo, .postToWeibo]
        
        self.present(shareSheet, animated: true)
        
//        let actionSheet = UIAlertController(title: "Error!", message: "error message", preferredStyle: .actionSheet)
//        
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
//            print("Cancel")
//        }
//        actionSheet.addAction(cancelAction)
//        
//        
//        let okeyAction = UIAlertAction(title: "OK", style: .destructive) { action in
//            print("OK")
//        }
//        actionSheet.addAction(okeyAction)
//        
//        let gotoOptions = UIAlertAction(title: "Options", style: .destructive) { action in
//            print("OK")
//        }
//        actionSheet.addAction(gotoOptions)
//        
//        self.present(actionSheet, animated: true)
    }
    
}





#Preview(body: {
    AlertController()
})

