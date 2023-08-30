//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Какой самый большой орган в теле человека?", a: ["Сердце", "Кожа", "Толстая кишка"], correctAnswer: "Кожа"),
        Question(q: "Сколько пятицентников нужно, чтобы собрать 5 долларов?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "Что означают буквы в часовом поясе по Гринвичу?", a: ["Глобальное меридианное время", "Время по Гринвичу", "Общее среднее время"], correctAnswer: "Время по Гринвичу"),
        Question(q: "Как по-французски будет 'шляпа'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "В прошлые времена, что джентльмен держал бы в кармане на брелоке?", a: ["Ноутбук", "Носовой платок", "Часы"], correctAnswer: "Часы"),
        Question(q: "Как попрощаться по-испански?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Какой из этих цветов НЕ используется в логотипе Google?", a: ["Зелёный", "Оранжевый", "Синий"], correctAnswer: "Оранжевый"),
        Question(q: "Какой алкогольный напиток готовят из патоки?", a: ["Ром", "Виски", "Джин"], correctAnswer: "Ром"),
        Question(q: "Каким животным был Харамбе?", a: ["Панда", "Горилла", "Крокодил"], correctAnswer: "Горилла"),
        Question(q: "Где находится Тасмания?", a: ["Индонезия", "Австралия", "Шотландия"], correctAnswer: "Австралия")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

