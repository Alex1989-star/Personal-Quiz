

import UIKit

class ResultViewController: UIViewController {
    // 1. Массив ответов
    // 2. Определить наиболее часто встречаемый тип животного
    // 3. Отобразить результат
    // 4. Избавиться от кнопки Back
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
}
