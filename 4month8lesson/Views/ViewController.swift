//
//  ViewController.swift
//  4month8lesson
//
//  Created by Apple on 5.3.2024.
//

import UIKit

class ViewController: UIViewController, MyProcols {

    
    private let continueBtn = MakerView.myMake.makeButton(title: "Continue",backgroundColorBT: .blue, cornerRadiusBt: 15, target: self, action: #selector(continueBtnTapped) )
    
//    private let continueBtn: UIButton = {
//        let btn = UIButton()
//        btn.setTitle("Continue", for: .normal)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.layer.cornerRadius = 15
//        btn.backgroundColor = .blue
//        btn.addTarget(self, action: #selector(continueBtnTapped), for: .touchUpInside)
//        return btn
//    }()
    
    private let nextBtn = MakerView.myMake.makeButton(title: "Continue",backgroundColorBT: .blue, cornerRadiusBt: 15, target: self, action: #selector(nextBtnTapped) )
    
//    private let nextBtn: UIButton = {
//        let btn = UIButton()
//        btn.setTitle("Next", for: .normal)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.layer.cornerRadius = 15
//        btn.backgroundColor = .brown
//        btn.addTarget(self, action: #selector(nextBtnTapped), for: .touchUpInside)
//
//        return btn
//    }()
    
    
    
    private let downloadBtn = MakerView.myMake.makeButton(title: "Continue",backgroundColorBT: .blue, cornerRadiusBt: 15, target: self, action: #selector(downloadBtnTapped) )
    
    
    
//    private let downloadBtn: UIButton = {
//        let btn = UIButton()
//        btn.setTitle("Dowload", for: .normal)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        btn.layer.cornerRadius = 15
//        btn.addTarget(self, action: #selector(downloadBtnTapped), for: .touchUpInside)
//
//        btn.backgroundColor = .red
//        return btn
//    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        setupUI()
    }

    private func setupUI(){
        view.addSubview(continueBtn)
        view.addSubview(nextBtn)
        view.addSubview(downloadBtn)
        
        NSLayoutConstraint.activate([
            continueBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            continueBtn.heightAnchor.constraint(equalToConstant: 50),
            
            nextBtn.topAnchor.constraint(equalTo: continueBtn.bottomAnchor, constant: 30),
            nextBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            nextBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            nextBtn.heightAnchor.constraint(equalToConstant: 50),
            
            downloadBtn.topAnchor.constraint(equalTo: nextBtn.bottomAnchor, constant: 30),
            downloadBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            downloadBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            downloadBtn.heightAnchor.constraint(equalToConstant: 50),
        
        ])

    }
    @objc func continueBtnTapped(_ sender: UIButton){
       let vc = FirstViewController()
        navigationController?.pushViewController(vc, animated: true)
       
    }
    @objc func nextBtnTapped(){
        let vc = SecondViewController()
         navigationController?.pushViewController(vc, animated: true)
        
    }
    @objc func downloadBtnTapped(){
        let vc = ThirdViewController()
         navigationController?.pushViewController(vc, animated: true)
        
    }
}

