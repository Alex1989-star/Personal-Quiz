

import UIKit

class ResultViewController: UIViewController {
    // 1. Массив ответов
    // 2. Определить наиболее часто встречаемый тип животного
    // 3. Отобразить результат
    // 4. Избавиться от кнопки Back
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        personalityResult()
    }
    
    func personalityResult() {
        var numberOfResponses: [AnimalType: Int] = [:]
        let responseType = answers.map{ $0.type }
        
        for response in responseType {
            numberOfResponses[response] = (numberOfResponses[response] ?? 0) + 1
        }
        
        let answersSorted = numberOfResponses.sorted(by:
            {(pairOne, pairTwo) -> Bool in
            return pairOne.value > pairTwo.value
        })
        
        let mostCommonAnswer = numberOfResponses.first!.key
        resultAnswerLabel.text = "Вы \(mostCommonAnswer.rawValue)"
        resultLabel.text = mostCommonAnswer.definition
    }
}




