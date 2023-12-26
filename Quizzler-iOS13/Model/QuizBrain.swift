//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by özge kurnaz on 22.12.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
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
    
    var questionNumber = 0   // var is mutable.
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String)->Bool{
        if userAnswer == questions[questionNumber].answer{
            score += 1
            return true
            
        }
        else{
            return false

        }
    }
    
    //
    func getScore()->Int{
        return score
    }
   
    func getQuestionText()->String{
        return questions[questionNumber].text
    }
    
    func getProgress()->Float{
        let progress = Float(questionNumber) / Float(questions.count)
        return progress
       
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    
    
}
