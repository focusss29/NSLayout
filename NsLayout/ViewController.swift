//
//  ViewController.swift
//  NsLayout
//
//  Created by Ilya Pogozhev on 21.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("My Button", for: .normal)
        button.configuration = .filled()
        button.addTarget(self, action: #selector(myButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstrains()
    }
}
private extension ViewController {
    func setupScene() {
        view.backgroundColor = .gray
        view.addSubview(myButton)
    }
    func makeConstrains() {
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

@objc private extension ViewController {
    func myButtonTapped() {
        print("Button Tap!")
    }
}

