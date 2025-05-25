//
//  ViewController.swift
//  Counter
//
//  Created by Artem Kuzmenko on 25.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Counter: UILabel!
    
    var count = 0 // Переменная счетчика
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Counter.text = " Значение счетчика:\(count)"
        // Do any additional setup after loading the view.
    }
    @IBAction func ButtonDidTap(_ sender: Any) {
        count += 1
        Counter.text = " Значение счетчика:\(count)"
    }
    @IBAction func ButtonClear(_ sender: Any) {
        count = 0
        Counter.text = " Значение счетчика:\(count)"
    }
}

