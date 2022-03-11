//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Student on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setNameAction(_ sender: Any) {
        if !nameTextField.text!.isEmpty{
        helloLabel.text = "Приветствую, " + nameTextField.text! + ". Приятного настроения"
            showAlert(name: "Успешно", desc: "Данные введены.")
        }
        else{
            showAlert(name: "Ошибка", desc: "Вы ничего не ввели")
        }
    }
    func showAlert(name: String, desc: String){
        let alert = UIAlertController(title: name, message:desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
        
    }
}

