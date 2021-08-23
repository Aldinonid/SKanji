//
//  Question.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/23.
//

import Foundation

struct Kanji {
	var urutan: String
	var karakter: String
	var arti: String
	
	init(urutan: String, karakter: String, arti: String){
		self.urutan = urutan;
		self.karakter = karakter;
		self.arti = arti;
	}
}


class Question {
	var questionKanji = [
		Kanji(urutan:"1", karakter:"会", arti:"Meeting"),
		Kanji(urutan:"2", karakter:"同", arti:"Equal"),
		Kanji(urutan:"3", karakter:"事", arti:"Thing"),
		Kanji(urutan:"4", karakter:"自", arti:"Oneself"),
		Kanji(urutan:"5", karakter:"社", arti:"Company"),
		Kanji(urutan:"6", karakter:"発", arti:"Departure"),
		Kanji(urutan:"7", karakter:"者", arti:"Someone"),
		Kanji(urutan:"8", karakter:"地", arti:"Ground"),
		Kanji(urutan:"9", karakter:"業", arti:"Business"),
		Kanji(urutan:"10", karakter:"方", arti:"Way"),
		Kanji(urutan:"11", karakter:"新", arti:"New"),
		Kanji(urutan:"12", karakter:"場", arti:"Location"),
		Kanji(urutan:"13", karakter:"員", arti:"Member"),
		Kanji(urutan:"14", karakter:"立", arti:"Stand up"),
		Kanji(urutan:"15", karakter:"開", arti:"Open"),
	]
	
	var decoyKanji = [
		Kanji(urutan:"1", karakter:"思", arti:"Think"),
		Kanji(urutan:"2", karakter:"家", arti:"House"),
		Kanji(urutan:"3", karakter:"世", arti:"Generation"),
		Kanji(urutan:"4", karakter:"多", arti:"Many"),
		Kanji(urutan:"5", karakter:"正", arti:"Correct"),
		Kanji(urutan:"6", karakter:"安", arti:"Safe"),
		Kanji(urutan:"7", karakter:"院", arti:"Institution"),
		Kanji(urutan:"8", karakter:"心", arti:"Heart"),
		Kanji(urutan:"9", karakter:"界", arti:"World"),
		Kanji(urutan:"10", karakter:"教", arti:"Teach"),
		Kanji(urutan:"11", karakter:"文", arti:"Sentence"),
		Kanji(urutan:"12", karakter:"手", arti:"Hand"),
		Kanji(urutan:"13", karakter:"力", arti:"Strength"),
		Kanji(urutan:"14", karakter:"問", arti:"Question"),
		Kanji(urutan:"15", karakter:"代", arti:"Replace"),
		Kanji(urutan:"16", karakter:"明", arti:"Light"),
		Kanji(urutan:"17", karakter:"強", arti:"Strong"),
		Kanji(urutan:"18", karakter:"公", arti:"Official"),
		Kanji(urutan:"19", karakter:"持", arti:"Hold"),
		Kanji(urutan:"20", karakter:"野", arti:"Field"),
		Kanji(urutan:"21", karakter:"以", arti:"Because"),
		Kanji(urutan:"22", karakter:"元", arti:"Origin"),
		Kanji(urutan:"23", karakter:"重", arti:"Heavy"),
		Kanji(urutan:"24", karakter:"近", arti:"Near"),
		Kanji(urutan:"25", karakter:"考", arti:"Thought"),
		Kanji(urutan:"26", karakter:"海", arti:"Sea"),
		Kanji(urutan:"27", karakter:"売", arti:"Sell"),
		Kanji(urutan:"28", karakter:"知", arti:"Know"),
		Kanji(urutan:"29", karakter:"道", arti:"Street"),
		Kanji(urutan:"30", karakter:"集", arti:"Gather"),
		Kanji(urutan:"31", karakter:"別", arti:"Separate"),
		Kanji(urutan:"32", karakter:"物", arti:"Thing"),
		Kanji(urutan:"33", karakter:"使", arti:"Use"),
		Kanji(urutan:"34", karakter:"品", arti:"Goods"),
		Kanji(urutan:"35", karakter:"計", arti:"Plan"),
		Kanji(urutan:"36", karakter:"死", arti:"Death"),
		Kanji(urutan:"37", karakter:"特", arti:"Special"),
		Kanji(urutan:"38", karakter:"始", arti:"Begin"),
		Kanji(urutan:"39", karakter:"朝", arti:"Morning"),
		Kanji(urutan:"40", karakter:"運", arti:"Carry"),
		Kanji(urutan:"41", karakter:"終", arti:"Finish"),
		Kanji(urutan:"42", karakter:"住", arti:"Live"),
		Kanji(urutan:"43", karakter:"無", arti:"Nothing"),
		Kanji(urutan:"44", karakter:"口", arti:"Mouth"),
		Kanji(urutan:"45", karakter:"少", arti:"Little"),
		Kanji(urutan:"46", karakter:"建", arti:"Build"),
		Kanji(urutan:"47", karakter:"空", arti:"Sky"),
		Kanji(urutan:"48", karakter:"急", arti:"Hurry"),
		Kanji(urutan:"49", karakter:"止", arti:"Stop"),
		Kanji(urutan:"50", karakter:"送", arti:"Send"),
		Kanji(urutan:"51", karakter:"切", arti:"Cut"),
		Kanji(urutan:"52", karakter:"足", arti:"Leg"),
		Kanji(urutan:"53", karakter:"起", arti:"Wake Up"),
		Kanji(urutan:"54", karakter:"店", arti:"Store"),
		Kanji(urutan:"55", karakter:"病", arti:"Sick"),
		Kanji(urutan:"56", karakter:"楽", arti:"Music"),
	]
	
	var screenKanji1 = Kanji(urutan: "", karakter: "", arti: "")
	var screenKanji2 = Kanji(urutan: "", karakter: "", arti: "")
	var screenKanji3 = Kanji(urutan: "", karakter: "", arti: "")
	var screenKanji4 = Kanji(urutan: "", karakter: "", arti: "")
	var kanjiArti = ""
	var kanjiKarakter = ""


	func showKanji() {
		
		let answerKanji = questionKanji.randomElement()!
		//				decoyKanji = decoyKanji.filter() {$0.urutan != answerKanji.urutan}
		let decoyKanji1 = decoyKanji.randomElement()!
		//				decoyKanji = decoyKanji.filter() {$0.urutan != decoyKanji1.urutan}
		let decoyKanji2 = decoyKanji.randomElement()!
		//				decoyKanji = decoyKanji.filter() {$0.urutan != decoyKanji2.urutan}
		let decoyKanji3 = decoyKanji.randomElement()!
		//				decoyKanji = decoyKanji.filter() {$0.urutan != decoyKanji3.urutan}
		
		//Tampilkan (split) Kanji2 kedalam layar secara acak
		var regatherKanji = [answerKanji, decoyKanji1, decoyKanji2, decoyKanji3]
		
		screenKanji1 = regatherKanji.randomElement()!
		regatherKanji = regatherKanji.filter() {$0.urutan != screenKanji1.urutan}
		screenKanji1.urutan = "a"
		
		screenKanji2 = regatherKanji.randomElement()!
		regatherKanji = regatherKanji.filter() {$0.urutan != screenKanji2.urutan}
		screenKanji2.urutan = "b"
		
		screenKanji3 = regatherKanji.randomElement()!
		regatherKanji = regatherKanji.filter() {$0.urutan != screenKanji3.urutan}
		screenKanji3.urutan = "c"
		
		screenKanji4 = regatherKanji.randomElement()!
		regatherKanji = regatherKanji.filter() {$0.urutan != screenKanji4.urutan}
		screenKanji4.urutan = "d"
		
		
		decoyKanji.append(decoyKanji1)
		decoyKanji.append(decoyKanji2)
		decoyKanji.append(decoyKanji3)
		
		
		kanjiArti = answerKanji.arti
		kanjiKarakter = answerKanji.karakter
		
	}
}
