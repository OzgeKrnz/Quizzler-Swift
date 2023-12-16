
import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
   let questions = [
            Question(q: "Albert Einstein, Nobel Fizik Ödülü'nü kazanmıştır.", a: "Doğru"),
            Question(q: "Amazon Nehri, dünyanın en uzun nehridir.", a: "Doğru"),
            Question(q: "Güneş Sistemi'ndeki en büyük gezegen Mars'tır.", a: "Yanlış"),
            Question(q: "'Pulp Fiction', Quentin Tarantino'nun yönettiği bir korku filmidir.", a:"Yanlış"),
            Question(q: "Mona Lisa tablosu, Leonardo da Vinci tarafından yapılmıştır.", a: "Doğru"),
            Question(q: "Renkli görüntüleriyle ünlü olan televizyon, ilk olarak 20. yüzyılın başlarında icat edilmiştir", a: "Yanlış"),
            Question(q: "Çİkolata köpeklerin kalbi için zararlıdır.", a:"Doğru"),
            Question(q: "Bir kağıt 7'den fazla katlanamaz.", a: "Yanlış"),
            Question(q:"The Matrix filminde, Morpheus'un Neo'ya sunduğu kırmızı hap, gerçek dünyayı görmesini sağlar.", a:"Doğru"),
            Question(q:"Ay'ın yüzeyi, insanların izlerini yıllarca koruyabilir.",a:"Doğru")
            
         
    //["Doğru", "Doğru", "Yanlış","Yanlış", "Doğru","Yanlış"]
    ]
    
    var questionNumber = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionText.text = questions[questionNumber].answer
        updateUI()
        
    }

    @IBAction func pressedAnswerButton(_ sender: UIButton) {
        timer.invalidate()
        if(questions[questionNumber].answer == sender.currentTitle ){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
                    
        }

        if questions.count-1 > questionNumber{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
        //updateUI()
    }
    
    @objc func updateUI(){
        questionText.text = questions[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear

    }
    
}

