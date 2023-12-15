
import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
   let questions = [
           ["Albert Einstein, Nobel Fizik Ödülü'nü kazanmıştır.", "Doğru"],
            ["Amazon Nehri, dünyanın en uzun nehridir.", "Doğru"],
            ["Güneş Sistemi'ndeki en büyük gezegen Mars'tır.","Yanlış"],
            ["'Pulp Fiction', Quentin Tarantino'nun yönettiği bir korku filmidir.","Yanlış"],
            ["Mona Lisa tablosu, Leonardo da Vinci tarafından yapılmıştır.","Doğru"],
            [" Renkli görüntüleriyle ünlü olan televizyon, ilk olarak 20. yüzyılın başlarında icat edilmiştir.","Yanlış"]
    //["Doğru", "Doğru", "Yanlış","Yanlış", "Doğru","Yanlış"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionText.text = questions[questionNumber][0]
        updateUI()
        
    }

    @IBAction func pressedAnswerButton(_ sender: UIButton) {

        if questions.count-1 > questionNumber{
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
      
        updateUI()

        //if sender.currentTitle ==
     
    }
    
    func updateUI(){
        questionText.text = questions[questionNumber][0]

    }
    
}

