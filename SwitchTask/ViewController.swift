//
//  ViewController.swift
//  SwitchTask
//
//  Created by Mustafa Kemal ARDA on 6.02.2024.
//
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let segmented: UISegmentedControl = {
        let segmented = UISegmentedControl(items: ["Neon Academy 2023","Neon","Apps"])
        segmented.selectedSegmentIndex = 0
        segmented.backgroundColor = .neonColor
        segmented.tintColor = .neonColor
        segmented.apportionsSegmentWidthsByContent = true
        segmented.addTarget(self, action: #selector(segmentedController(_ :)), for: .valueChanged)
        segmented.addTarget(self, action: #selector(changeSegmentedController(_ :)), for: .valueChanged)
        return segmented
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(segmented)
        segmented.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
    }
    
    @objc func segmentedController(_ sender: UISegmentedControl ){
        print("Selected segmented controller index: \(sender.selectedSegmentIndex)")
    }
    
    @objc func changeSegmentedController(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 0:
            sender.snp.updateConstraints { make in
                make.width.equalTo(350)
            }
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
            break
            
        case 1:
            sender.snp.updateConstraints { make in
                make.width.equalTo(280)
            }
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
            break
            
        case 2:
            sender.snp.updateConstraints { make in
                make.width.equalTo(200)
            }
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
            break
            
        default:
            break
        }
    }
    
}
    extension UIColor {
        static let neonColor = UIColor(_colorLiteralRed: 0.6, green: 1.0, blue: 0.8, alpha: 1.0)
    }
    



#Preview(body: {
    ViewController()
})

