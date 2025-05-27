//
//  ViewController.swift
//  Counter
//
//  Created by Artem Kuzmenko on 25.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Counter: UILabel!
    
    @IBOutlet weak var HistoryTextView: UITextView!
    
    var count = 0 // Переменная счетчика
    
    func appendHistory(_ text: String) {
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss"
            let timestamp = formatter.string(from: Date())
            HistoryTextView.text += "\(timestamp): \(text)\n"
            let range = NSMakeRange(HistoryTextView.text.count - 1, 0)
             HistoryTextView.scrollRangeToVisible(range)
        print("Добавлено в историю: \(text)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Counter.text = " Значение счетчика:\(count)"
        HistoryTextView.text = "История изменений:\n"
        HistoryTextView.isEditable = false
        HistoryTextView.isScrollEnabled = true
        print("viewDidLoad работает")
    }
    @IBAction func ButtonDidTapPlus(_ sender: Any) {
        count += 1
        Counter.text = " Значение счетчика:\(count)"
        appendHistory("Значение изменено на +1")
    }
    @IBAction func ButtonClear(_ sender: Any) {
        count = 0
        Counter.text = " Значение счетчика:\(count)"
        appendHistory("Значение сброшено")
    }
    @IBAction func ButtonDidTapMinus(_ sender: Any) {
        if count > 0 {
            count -= 1
            Counter.text = " Значение счетчика:\(count)"
            appendHistory("Значение изменено на -1")
        }
        else {
            appendHistory("Попытка уменьшить значение счётчика ниже 0")
        }
       
    }
}

