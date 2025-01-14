//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Tyler Sheft on 8/13/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {

	let quiz = [
		Question(q: "A slug's blood is green.", a: "True"),
		Question(q: "Approximately 1/4 of human bones are in the feet.", a: "True"),
		Question(q: "The total surface area of two human lungs is approximately 70 square meters.", a: "True"),
		Question(q: "In West Virginia, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
		Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
		Question(q: "It is illegal to pee in the ocean in Portugal.", a: "True"),
		Question(q: "You can lead a cow downstairs but not upstairs.", a: "False"),
		Question(q: "Google was originally called 'Backrub'.", a: "True"),
		Question(q: "Buzz Aldrin's mother's maiden name was \"Moon\".", a: "True"),
		Question(q: "The loudest sound produced by any animal is 188dB. That animal is the African Elephant.", a: "False"),
		Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
		Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
		// Insert more questions below
	]

	var questionNumber = 0

	var score = 0

	mutating func checkAnswer(_ userAnswer: String) -> Bool {
		let actualQuestion = quiz[questionNumber]
		let actualAnswer = actualQuestion.answer
		let userGotItRight = userAnswer == actualAnswer
		if userGotItRight {
			score += 1
			return true
		} else {
			return false
		}
	}

	func getScore() -> Int {
		return score
	}

	func getQuestionText() -> String {
		let text = quiz[questionNumber].text
		return text
	}

	func getProgress() -> Float {
		let progress = Float(questionNumber + 1) / Float(quiz.count)
		return progress
	}

	mutating func nextQuestion() {
		if questionNumber + 1 < quiz.count {
			questionNumber += 1
		} else {
			questionNumber = 0
			score = 0
		}
	}

}
